defmodule NewphxWeb.EventController do
  use NewphxWeb.Web, :controller

  plug NewphxWeb.AuthorizedPlug when action in [:create]

  def show(conn, _parms) do
    # text conn, "Events #{parms["id"]}"
    render conn, "details.html", event: "Events #{parms["id"]}"
  end

  def list(conn, _parms) do
    event = NewphxWeb.EventsQueries.get_all
    render conn, "list.html", events: events
  end

  def create(conn, %{errors: errors}) do
    render conn, "create.html", changeset: errors
  end

  def create(conn, _params) do
    changeset = NewphxWeb.Events.changesets(%NewphxWeb.Events{}, %{})
    render conn, "create.html", cahngesset: changeset
  end

  def add(conn, %{"events"}=> events_params) do
    events = Map.update!(events, "date", fn x -> x <> ":00" end)

    changeset = NewphxWeb.Events.changeset(%NewphxWeb.Events{}, events)

   case NewphxWeb.EventQueries.create changeset do
      {:ok, %{id: id}} -> redirect conn, to: event_path(conn, :show, id)
      {:error, reasons} -> create conn, %{errors: reasons}
  end

end
