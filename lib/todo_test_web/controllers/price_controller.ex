defmodule TodoTestWeb.PriceController do
use TodoTestWeb, :controller
alias TodoTest.Accounting
alias TodoTest.Accounting.Price

	def index(conn, _params) do
		# mapa ficticio
		fake_prices = %{name: "General price", description: "This is a general price"}
		# prices = name: "Book" description: "the best moments of the history" price: "250"

		# Lista == array y se representa por esto: [] -> [0, 1, 2, 3, 4, 5, 6]
		# mapa = [%Price{name: "name", description: "description"}, %Price{name: "name", description: "description"}]
		prices = Accounting.list_prices()
		render(conn, "index.html", prices: prices)
	end

	def new(conn, _params) do
		changeset = Accounting.change_price(%Price{})
		render(conn, "new.html", changeset: changeset)
	end

	def create(conn, _params) do
		render(conn,"create.html")
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
