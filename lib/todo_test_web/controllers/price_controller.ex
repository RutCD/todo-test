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
      {:ok, user} ->
        conn
        |> put_flash(:info, "Price created successfully.")
        |> redirect(to: Routes.price_path(conn, :show, user))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

	def edit(conn, _params) do
		render(conn, "edit.html")
	end

	def update(conn, _params) do
		render(conn, "update.html")
	end

	def delete(conn, _params)do 
		render(conn, "delete.html")
	end
end
