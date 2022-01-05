defmodule TodoTest.AccountingTest do
  use TodoTest.DataCase

  alias TodoTest.Accounting

  describe "prices" do
    alias TodoTest.Accounting.Price

    import TodoTest.AccountingFixtures

    @invalid_attrs %{descriptio: nil, name: nil, price: nil}

    test "list_prices/0 returns all prices" do
      price = price_fixture()
      assert Accounting.list_prices() == [price]
    end

    test "get_price!/1 returns the price with given id" do
      price = price_fixture()
      assert Accounting.get_price!(price.id) == price
    end

    test "create_price/1 with valid data creates a price" do
      valid_attrs = %{description: "some description", name: "some name", price: 120.5}

      assert {:ok, %Price{} = price} = Accounting.create_price(valid_attrs)
      assert price.description == "some description"
      assert price.name == "some name"
      assert price.price == 120.5
    end

    test "create_price/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounting.create_price(@invalid_attrs)
    end

    test "update_price/2 with valid data updates the price" do
      price = price_fixture()
      update_attrs = %{description: "some updated description", name: "some updated name", price: 456.7}

      assert {:ok, %Price{} = price} = Accounting.update_price(price, update_attrs)
      assert price.description == "some updated descriptio"
      assert price.name == "some updated name"
      assert price.price == 456.7
    end

    test "update_price/2 with invalid data returns error changeset" do
      price = price_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounting.update_price(price, @invalid_attrs)
      assert price == Accounting.get_price!(price.id)
    end

    test "delete_price/1 deletes the price" do
      price = price_fixture()
      assert {:ok, %Price{}} = Accounting.delete_price(price)
      assert_raise Ecto.NoResultsError, fn -> Accounting.get_price!(price.id) end
    end

    test "change_price/1 returns a price changeset" do
      price = price_fixture()
      assert %Ecto.Changeset{} = Accounting.change_price(price)
    end
  end

  describe "prices" do
    alias TodoTest.Accounting.Price

    import TodoTest.AccountingFixtures

    @invalid_attrs %{}

    test "list_prices/0 returns all prices" do
      price = price_fixture()
      assert Accounting.list_prices() == [price]
    end

    test "get_price!/1 returns the price with given id" do
      price = price_fixture()
      assert Accounting.get_price!(price.id) == price
    end

    test "create_price/1 with valid data creates a price" do
      valid_attrs = %{}

      assert {:ok, %Price{} = price} = Accounting.create_price(valid_attrs)
    end

    test "create_price/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounting.create_price(@invalid_attrs)
    end

    test "update_price/2 with valid data updates the price" do
      price = price_fixture()
      update_attrs = %{}

      assert {:ok, %Price{} = price} = Accounting.update_price(price, update_attrs)
    end

    test "update_price/2 with invalid data returns error changeset" do
      price = price_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounting.update_price(price, @invalid_attrs)
      assert price == Accounting.get_price!(price.id)
    end

    test "delete_price/1 deletes the price" do
      price = price_fixture()
      assert {:ok, %Price{}} = Accounting.delete_price(price)
      assert_raise Ecto.NoResultsError, fn -> Accounting.get_price!(price.id) end
    end

    test "change_price/1 returns a price changeset" do
      price = price_fixture()
      assert %Ecto.Changeset{} = Accounting.change_price(price)
    end
  end
end
