defmodule QuesadillaDev.Schemas.MergedPr do
  @moduledoc """
  Merged PR schema
  """

  use Ecto.Schema
  import Ecto.Changeset, only: [cast: 3, apply_action: 2]

  @type t :: %__MODULE__{}

  @derive Jason.Encoder
  @primary_key false
  embedded_schema do
    field(:repo, :string)
    field(:pr_name, :string)
    field(:pr_link, :string)
    field(:date, :string)
  end

  @fields ~w(repo pr_name pr_link date)a

  @spec to_struct(map()) :: {:ok, __MODULE__.t()} | {:error, Ecto.Changeset.t()}
  def to_struct(params) when is_map(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> apply_action(nil)
  end
end
