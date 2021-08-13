defmodule StreamersTest do
  use ExUnit.Case
  doctest Streamers

  test "greets the world" do
    assert Streamers.hello() == :world
  end
end
