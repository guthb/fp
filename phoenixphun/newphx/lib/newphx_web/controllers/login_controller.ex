defmodule NewphxWeb.LoginController do
  use NewphxWeb.Web, :controller

  def index(conn, _) do
    render conn, "login.html"
  end

  def login(conn, params) do

  end
end
