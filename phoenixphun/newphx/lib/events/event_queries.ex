defmodule Rsvp.EventQueries do
  import Ecto.Query

  alias Rsvp.{Repo, Events}

  def det_all do
    Repo.all(from(Events))
  end

  def get_all_for_location do
    query =
      from(e in Events,
        where: e.location == ^location
      )

    Repo.all(query)
  end
end
