defmodule LiveTodoWeb.PageController do
  use LiveTodoWeb, :controller

  def mustafa(conn, _params) do
    render(conn, :mustafa)
  end
  def hibhai(conn, _params) do
    render(conn, :hibhai)
  end
end
