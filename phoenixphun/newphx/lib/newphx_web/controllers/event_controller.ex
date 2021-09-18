defmodule NewphxWeb.EventController do
  use NewphxWeb.Web, :controller

  def show(conn, _parms) do
    # text conn, "Events #{parms["id"]}"
    render conn, "details.html", event: "Events #{parms["id"]}"
  end

  def list(conn, _parms) do
    event = NewphxWeb.EventsQueries.get_all
    render conn, "list.html", events: events
  end

  def create(conn, _params) do
    render conn, "create.html"
  end

end
