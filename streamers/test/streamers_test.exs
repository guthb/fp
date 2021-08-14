defmodule StreamersTest do
  use ExUnit.Case, async:true
  doctest Streamers

  test "greets the world" do
    assert Streamers.hello() == :world
  end

  test "find index file in a directory" do
    assert Streamers.find_index("test/fixtures/emberjs") ==
             "somefile.m3u8"
  end

  test "returns nill if not availbe for index file" do
    assert Streamers.find_index("test/fixtures/not_available") == nil
  end
end
