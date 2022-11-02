defmodule QuesadillaDev.Schemas.Reading do
  @moduledoc """
  Reading schema
  """

  use Ecto.Schema

  @type t :: %__MODULE__{}

  @required_fields ~w(title author author_gender reading_date
  genre nationality first_time)a

  @optional_fields ~w(subgenre nationality_2 publishing_date
  original_language read_language)a

  @fields @optional_fields ++ @required_fields

  @derive Jason.Encoder
  @primary_key false
  embedded_schema do
    field :title, :string
    field :author, :string
    field :author_gender, :string
    field :reading_date, :date
    field :genre, :string
    field :subgenre, :string
    field :nationality, :string
    field :nationality_2, :string
    field :publishing_year, :integer
    field :original_language, :string
    field :read_language, :string
    field :first_time, :boolean
  end
end
