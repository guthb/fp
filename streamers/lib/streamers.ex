defmodule Streamers do
  defrecord M3U8, program_id: nil, file bandwith: nil
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
      file
    end
  end

  def extract_m3u8(index_file) do
    File.open! file_index, fn(pid) ->
      #discards #EXTM3U
      IO.readline(pid)
      do_extract_mu3u8(pid, [])
    end
  end

  defp do_extrace_m3u8(pid, acc)do
    case IO.readline(pid) do
      :eof -> figure_this_out
      stream_inf ->
        path = IO.readline(pid)
        do_extrace_m3u8(pid, stream_inf, path, acc)
    end
  end

  defp is_index?(file) do
    File.open!(file, fn pid ->
      IO.read(pid, 25) == "#somethinginfile\n#anotherthinginfile"
    end)
  end
end
