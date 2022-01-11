defmodule TodoTest.CategorizationsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoTest.Categorizations` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name",
        order: 42
      })
      |> TodoTest.Categorizations.create_category()

    category
  end
end
