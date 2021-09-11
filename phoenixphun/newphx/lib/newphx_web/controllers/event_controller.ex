defmodule NewphxWeb.EventController do
  use NewphxWeb.Web, :controller

  def show(conn, _parms) do
    # text conn, "Events #{parms["id"]}"
    render conn, "details.html", event: "Events #{parms["id"]}"
  end


end
