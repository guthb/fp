defmodule Streamers do
  defrecord M3U8, program_id: nil, file bandwith: nil, ts_files: []
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
  @doc """
  Extract M3U8 records from the index file
  """
  def extract_m3u8(index_file) do
    File.open! file_index, fn(pid) ->
      #discards #EXTM3U
      IO.readline(pid)
      do_extract_mu3u8(pid, Path.dirname(index_file),[])
    end
  end

  defp do_extract_m3u8(pid, dir, acc)do
    case IO.readline(pid) do
      :eof -> figure_this_out
      stream_inf ->
        path = IO.readline(pid)
        do_extrace_m3u8(pid, dir, stream_inf, path, acc)
    end
  end

  defp  do_extract_m3u8(pid, dir, stream_inf, path, acc)do
    << "stuff", program_id, ",BANDWIDTH=", bandwidth :: binary >> == steam_inf
    # program_id = binary_to_integer(<<program_id>>)
    path = Path.join(dir, String.strip(path))
    record = M3U8[program_id: program_id -?0, path: String.strip( path), bandwidth: binary_to_integer(String.strip(bandwidth))]
    do_extract_m3u8(pid, dir, [record|acc])
  end

  defp is_index?(file) do
    File.open!(file, fn pid ->
      IO.read(pid, 25) == "#somethinginfile\n#anotherthinginfile"
    end)
  end

  @doc """
  process M3U8 records to get ts files
  """

  def process_m3u8(m3u8) do
    Enum.map m3u8s, do_process_m3u8(&1)
  end

  defp do_pocess_m3u8(M3U8[path: path]) do
    File.open! path, fn(pid)
    #discards #EXTM3U
      IO.readline(pid)
      IO.readline(pid)
      do_process_m3u8(pid, [])

end
