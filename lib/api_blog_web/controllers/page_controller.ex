defmodule ApiBlogWeb.PageController do
  use ApiBlogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
