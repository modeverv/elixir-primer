defmodule NanoPlanner13Web.PageController do
  use NanoPlanner13Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
