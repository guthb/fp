defmodule StreamersTest do
  use ExUnit.Case
  doctest Streamers

  test "greets the world" do
    assert Streamers.hello() == :world
  end

  test "find index file in a directory" do
    assert Streamers.find_index("test/fixtures/emberjs") ==
             "somefile.m3u8"
  end
end
