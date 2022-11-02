defmodule QuesadillaDevWeb.PageController do
  use QuesadillaDevWeb, :controller

  alias QuesadillaDev.Clients.Github
  alias BooksLists.Year2022

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show_work(conn, _params) do
    render(conn, "work.html")
  end

  def show_prs(conn, _params) do
    case Github.get_merged_prs() do
      {:ok, prs} ->
        render(conn, "osc.html", %{prs: prs})

      _ ->
        raise "Error getting the PRs"
    end
  end

  def show_reading_statistics(conn, _params) do
    books_list = Year2022.list()

    render(conn, "reading_statistics.html", %{books_list: books_list})
  end
end
