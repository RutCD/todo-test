defmodule TodoTestWeb.PriceController do
  use TodoTestWeb, :controller
  alias TodoTest.Accounting
  alias TodoTest.Accounting.Price

  def index(conn, _params) do
    prices = Accounting.list_prices()
    render(conn, "index.html", prices: prices)
  end

  def new(conn, _params) do
    changeset = Accounting.change_price(%Price{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"price" => price_params}) do
    case Accounting.create_price(price_params) do
      {:ok, price} ->
        conn
        |> put_flash(:info, "Price created successfully.")
        |> redirect(to: Routes.price_path(conn, :show, price))

        {:error, %Ecto.Changeset{} = changeset} ->
          render(conn, "new.html", changeset: changeset)
      end
  end

  def show(conn, %{"id" => id}) do
    price = Accounting.get_price!(id)
    render(conn, "show.html", price: price)
  end

  def edit(conn, %{"id" => id}) do
    price = Accounting.get_price!(id)
    changeset = Accounting.change_price(price)
    render(conn, "edit.html", price: price, changeset: changeset)
  end

  def update(conn, %{"id" => id, "price" => price_params})do
    price = Accounting.get_price!(id)

    case Accounting.update_price(price, price_params) do
     {:ok, price} ->
     conn
     |> put_flash(:info, "Price updated succesfully")
     |> redirect(to: Routes.price_path(conn, :show, price))

     {:error, %Ecto.Changeset{} = changeset} ->
      render(conn, "edit.html", price: price, changeset: changeset)
    end
  end
 def delete(conn, %{"id" =>id})do
  price = Accounting.get_price!(id)
  {:ok, _price} = Accounting.delete_price(price)

  conn
  |> put_flash(:info, "Price deleted successfully")
  |> redirect(to: Routes.price_path(conn, :index))
 end

 def pricelist(conn, _params) do
  prices = Accounting.list_prices()
  render(conn, "pricelist.html", prices: prices)
end


end
