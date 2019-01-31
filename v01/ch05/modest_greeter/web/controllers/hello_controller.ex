defmodule ModestGreeter.HelloController do
  use ModestGreeter.Web, :controller

  def show(conn, _paramas) do
    render conn, "show.html"
  end
end
