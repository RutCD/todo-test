defmodule TodoTestWeb.PageController do
  use TodoTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # declarar funcion
  def contact(conn, _params) do
    render(conn, "contact.html")
  end

  def home(conn, _params) do
    render(conn, "home.html")
  end

  def about(conn, _params) do
    render(conn,"about.html") 
  end

  def price(conn, _params) do
    render(conn,"price.html")
    
  end
end
