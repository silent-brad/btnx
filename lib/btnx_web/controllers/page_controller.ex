defmodule BtnxWeb.PageController do
  use BtnxWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
