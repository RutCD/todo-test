defmodule TodoTest.Repo.Migrations.CreatePrices do
  use Ecto.Migration

  def change do
    create table(:prices) do
      add :name, :string
      add :description, :string
      add :price, :float

      timestamps()
    end
  end
end
