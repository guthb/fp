defmodule NewphxWeb.LoginController do
  use NewphxWeb.Web, :controller

  def index(conn, _) do
    render conn, "login.html"
  end
  #do not use in production
  def login(conn, %{"login" => %{"username" => name}}) do
    expiration = 60*60*24*7
    conn
    |> Plug.Conn.put_resp_cookie("user_name", name, max_age: expiration)
    |> redirect(to: "/")
  end
end
