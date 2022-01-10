defmodule TodoTest.Categorizations.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    field :description, :string
    field :name, :string
    field :order, :integer

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :description, :order])
    |> validate_required([:name, :description, :order])
  end
end
