defmodule LiveTodoWeb.PageController do
  use LiveTodoWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
