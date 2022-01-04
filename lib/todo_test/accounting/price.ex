defmodule TodoTest.Accounting.Price do
  use Ecto.Schema
  import Ecto.Changeset

  schema "prices" do
    field :descriptio, :string
    field :name, :string
    field :price, :float

    timestamps()
  end

  @doc false
  def changeset(price, attrs) do
    price
    |> cast(attrs, [:name, :descriptio, :price])
    |> validate_required([:name, :descriptio, :price])
  end
end
