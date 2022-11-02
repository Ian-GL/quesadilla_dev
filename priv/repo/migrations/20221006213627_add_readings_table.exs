defmodule QuesadillaDev.Repo.Migrations.AddReadingsTable do
  use Ecto.Migration

  def change do
    create table(:readings, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string, null: false
      add :author, :string, null: false
      add :author_gender, :string, null: false
      add :reading_date, :date, null: false
      add :genre, :string, null: false
      add :subgenre, :string
      add :nationality, :string, null: false
      add :nationality_2, :string
      add :publishing_year, :integer
      add :original_language, :string
      add :read_language, :string
      add :first_time, :boolean, null: false

      timestamps()
    end

    create unique_index(:readings, [:title, :author, :reading_date])
  end
end
