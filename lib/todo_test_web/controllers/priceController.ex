defmodule TodoTestWeb.PriceController do
use TodoTestWeb, :controller

	def index(conn, _params) do
	render(conn, "index.html")

	end

	def new(conn, _params) do
	render(conn, "new.html")
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
