defmodule TodoTest.Repo.Migrations.Price do
  use Ecto.Migration

  def change do

  	create table ("Price") do 
  		add :name, :varchar
      	add :descripcion, :varchar
      	add :price, :integer

      	timestamps()
      	
      end
  	end
end
