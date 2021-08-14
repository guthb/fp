defmodule Streamers do
  @moduledoc """
  Documentation for `Streamers`.
  """

  @doc """
  Find Streaimg index file in the given directory

  ## Examples

      iex> Streamers.find_index("this/doesnt/exist")
      nil


  """

  # def hello do
  #   :world
  # end

  # code Comment
  def find_index(directory) do
    files = Path.join(directory, "*.m3u8")

    if file = Enum.find(Path.wildcard(files), is_index?(&1)) do
      Path.basename(file)
    end
  end

  defp is_index?(file) do
    File.open!(file, fn pid ->
      IO.read(pid, 25) == "#somethinginfile\n#anotherthinginfile"
    end)
  end
end
