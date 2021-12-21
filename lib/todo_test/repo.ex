defmodule TodoTest.Repo do
  use Ecto.Repo,
    otp_app: :todo_test,
    adapter: Ecto.Adapters.Postgres
end
