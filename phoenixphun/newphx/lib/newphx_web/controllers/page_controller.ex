defmodule NewphxWeb.PageController do
  use NewphxWeb, :controller

  def index(conn, params) do
    NewphxWeb.EventQueries.get_by_id(params["id"])
    render conn, "details.html", event: "Events #{parma["id"]}""
  end
end
