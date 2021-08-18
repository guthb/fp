defmodule StreamersTest do
  use ExUnit.Case, async:true

  doctest Streamers
  alias Streamers.M3U8, as M3U8

  @index_file "test/fixtures/emberjs/somefile.m3u8"
  @m3u8_sample "test/fixtures/emberjs/somefilecopy.m3u8"

  test "greets the world" do
    assert Streamers.hello() == :world
  end

  test "find index file in a directory" do
    assert Streamers.find_index("test/fixtures/emberjs") == @index_file

  end

  test "returns nill if not availbe for index file" do
    assert Streamers.find_index("test/fixtures/not_available") == nil
  end

  test "extracts m3u8 from index file" do
    m3u8 = Streamers.extract_m3u8(@index_file)
    assert Enum.first(m3u8)==
      M3U8[program_id: 1, bandwith: 110000, path: @m3u8_sample]
      assert length(m3u8s) == 6
  end

  test "process m3u8" do
    m3u8 = @index_file |> Streamers.extract_m3u8 |> Streamers.process_mu38
    sample = Enum.find(m3u8, fun(m3u8) -> m3u8.path == @m3u8_sample end)
    assert length(sample.ts_files)   == 2
  end


end
