defmodule SampleNewappTest do
  use ExUnit.Case
  doctest SampleNewapp

  test "greets the world" do
    assert SampleNewapp.hello() == :world
  end
end
