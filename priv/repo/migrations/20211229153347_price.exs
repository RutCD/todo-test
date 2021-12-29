defmodule TodoTest.Repo.Migrations.Price do
  use Ecto.Migration

  def change do

  	create table ("Prices") do 
  		add :name, :string
      	add :description, :string
      	add :price, :float

      	timestamps()

      end
  	end
end
