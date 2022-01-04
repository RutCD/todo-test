defmodule TodoTest.Price do
  use Ecto.Schema
  import Ecto.Changeset

  schema "prices" do
    field :description, :string
    field :name, :string
    field :price, :float

    timestamps()
  end

  @doc false
  def changeset(price, attrs) do
    price
    |> cast(attrs, [:name, :description, :price])
    |> validate_required([:name, :description, :price])
  end
end
