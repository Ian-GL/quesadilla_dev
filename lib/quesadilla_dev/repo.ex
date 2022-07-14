defmodule QuesadillaDev.Repo do
  use Ecto.Repo,
    otp_app: :quesadilla_dev,
    adapter: Ecto.Adapters.Postgres
end
