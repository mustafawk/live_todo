defmodule LiveTodoWeb.MyPortfolioController do
  use LiveTodoWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"me" => me}) do
    render(conn, :show, me: me)
  end

end
