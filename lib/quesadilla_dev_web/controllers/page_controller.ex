defmodule QuesadillaDevWeb.PageController do
  use QuesadillaDevWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show_work(conn, _params) do
    render(conn, "work.html")
  end
end
