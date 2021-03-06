defmodule TodoTest.AccountingFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoTest.Accounting` context.
  """

  @doc """
  Generate a price.
  """
  def price_fixture(attrs \\ %{}) do
    {:ok, price} =
      attrs
      |> Enum.into(%{
        descriptio: "some descriptio",
        name: "some name",
        price: 120.5
      })
      |> TodoTest.Accounting.create_price()

    price
  end

  @doc """
  Generate a price.
  """
  def prices_fixture(attrs \\ %{}) do
    {:ok, price} =
      attrs
      |> Enum.into(%{
      name: "some name",
      description: "some description",
      price: "some price"

      })
      |> TodoTest.Accounting.create_price()

    price
  end
end
