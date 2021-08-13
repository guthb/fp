defmodule Streamers do
  @moduledoc """
  Documentation for `Streamers`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Streamers.hello()
      :world

  """
  def hello do
    :world
  end

  def find_index(directory) do
    files = Path.join(directory, "*.m3u8")

    Enum.find(Path.wildcard(files), is_index?(&1)
  end

  defp is_index?(file) do
    File.open! file, fn
      "#somethinginfile\n#anotherthinginfile" <> _ -> true
      _ -> false
    end)
  end
end
