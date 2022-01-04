defmodule TodoTest.Repo.Migrations.CreatePrices do
  use Ecto.Migration

  def change do
    create table(:prices) do
      add :name, :string
      add :descriptio, :string
      add :price, :float

      timestamps()
    end
  end
end
