defmodule TodoTestWeb.PageController do
  use TodoTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # declarar funcion
  def contact(conn, _params) do
   name = "Rut"
    render(conn, "contact.html", name: name)
  end

  def home(conn, _params) do
    render(conn, "home.html")
  end
end
