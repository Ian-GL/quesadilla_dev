defmodule QuesadillaDev.Clients.Github do
  @moduledoc """
  Client for GitHub
  """

  alias QuesadillaDev.Schemas.MergedPr

  @merged_prs_endpoint "https://github.com/search?o=desc&p=1&q=is%3Apr+author%3AIan-GL+archived%3Afalse+is%3Amerged+is%3Apublic+-user%3AIan-GL&s=created&type=Issues"

  def get_merged_prs do
    :get
    |> Finch.build(@merged_prs_endpoint)
    |> Finch.request(GithubFinch)
    |> case do
      {:ok, %Finch.Response{} = response} ->
        merged_prs = parse_prs_body(response)
        {:ok, merged_prs}

      error ->
        error
    end
  end

  defp parse_prs_body(%Finch.Response{body: body}) do
    case Floki.parse_document(body) do
      {:ok, document} ->
        raw_items = Floki.find(document, ".issue-list-item")
        Enum.map(raw_items, fn ri -> format_items(ri) end)

      _ ->
        {:error, :github_parsing_error}
    end
  end

  defp format_items(raw_item) do
    {pr_name, pr_link} = get_pr_info(raw_item)

    params = %{
            repo: get_repo(raw_item),
            pr_name: pr_name,
            pr_link: pr_link,
            date: get_date(raw_item)
          }

    case MergedPr.to_struct(params) do
      {:ok, merged_pr} -> merged_pr
      error -> error
    end
  end

  defp get_repo(raw_item) do
    repo_el =
      raw_item
      |> Floki.find("[data-hovercard-type=repository]")
      |> List.first()

    case repo_el do
      {_, _attrs, [repo_name]} ->
        repo_name

      _ ->
        raise "Unable to get one of the repos names"
    end
  end

  defp get_pr_info(raw_item) do
    pr_el =
      raw_item
      |> Floki.find(".markdown-title a")
      |> List.first()

    case pr_el do
      {_, _attrs, [pr_name]} ->
        pr_href = Floki.attribute(pr_el, "href")
        {pr_name, build_url(pr_href)}

      _ ->
        raise "Unable to get pr info"
    end
  end

  defp get_date(raw_item) do
    date_el =
      raw_item
      |> Floki.find(".d-flex relative-time")
      |> List.first()

    case date_el do
      {_, _attrs, [date]} ->
        date

      _ ->
        raise "Unable to get one of the repos names"
    end
  end

  defp build_url([href]) when is_binary(href), do: "https://github.com" <> href
  defp build_url(_), do: raise "Unable to get PR link"
end
