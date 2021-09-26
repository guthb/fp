defmodule NewphxWeb.AuthorizedPlug do
  import Plug.Conn
  import NewphxWeb.Controller

  def init(opts) do
    opts
  end

  def call(conn, _) do
    user_name = conn.cookies["user_name"]
  end

  defp authorize_user(conn, nill) do
    conn
    |> redirect(to: "/login")
    |> halt
  end

end
