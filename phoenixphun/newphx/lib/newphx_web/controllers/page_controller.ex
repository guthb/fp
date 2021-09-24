defmodule NewphxWeb.PageController do
  use NewphxWeb.Web, :controller

  def index(conn, %{"id" -> id }) do
    event = NewphxWeb.EventQueries.get_by_id(id)
    |> IO.inspect()

    render conn, "details.html", event: event
  end
end
