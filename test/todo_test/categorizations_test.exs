defmodule TodoTest.CategorizationsTest do
  use TodoTest.DataCase

  alias TodoTest.Categorizations

  describe "categories" do
    alias TodoTest.Categorizations.Category

    import TodoTest.CategorizationsFixtures

    @invalid_attrs %{description: nil, name: nil, order: nil}

    test "list_categories/0 returns all categories" do
      category = category_fixture()
      assert Categorizations.list_categories() == [category]
    end

    test "get_category!/1 returns the category with given id" do
      category = category_fixture()
      assert Categorizations.get_category!(category.id) == category
    end

    test "create_category/1 with valid data creates a category" do
      valid_attrs = %{description: "some description", name: "some name", order: 42}

      assert {:ok, %Category{} = category} = Categorizations.create_category(valid_attrs)
      assert category.description == "some description"
      assert category.name == "some name"
      assert category.order == 42
    end

    test "create_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Categorizations.create_category(@invalid_attrs)
    end

    test "update_category/2 with valid data updates the category" do
      category = category_fixture()
      update_attrs = %{description: "some updated description", name: "some updated name", order: 43}

      assert {:ok, %Category{} = category} = Categorizations.update_category(category, update_attrs)
      assert category.description == "some updated description"
      assert category.name == "some updated name"
      assert category.order == 43
    end

    test "update_category/2 with invalid data returns error changeset" do
      category = category_fixture()
      assert {:error, %Ecto.Changeset{}} = Categorizations.update_category(category, @invalid_attrs)
      assert category == Categorizations.get_category!(category.id)
    end

    test "delete_category/1 deletes the category" do
      category = category_fixture()
      assert {:ok, %Category{}} = Categorizations.delete_category(category)
      assert_raise Ecto.NoResultsError, fn -> Categorizations.get_category!(category.id) end
    end

    test "change_category/1 returns a category changeset" do
      category = category_fixture()
      assert %Ecto.Changeset{} = Categorizations.change_category(category)
    end
  end
end
