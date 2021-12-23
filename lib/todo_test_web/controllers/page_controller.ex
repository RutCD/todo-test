defmodule TodoTestWeb.PageController do
  use TodoTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # declarar funcion
  def contact(conn, _params) do
    render(conn, "contact.html")
  end
end
