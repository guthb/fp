defmodule SampleNewappTest do
  use ExUnit.Case
  doctest SampleNewapp

  test "greets the world" do
    assert SampleNewapp.hello() == :world
  end

  test "the truth" do
    assert 1 + 1 == 2
  end

  # @tag watching: true
  test "another test" do
    assert 2 + 2 == 4
  end
end
