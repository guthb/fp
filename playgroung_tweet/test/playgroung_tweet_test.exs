defmodule PlaygroungTweetTest do
  use ExUnit.Case
  doctest PlaygroungTweet

  test "greets the world" do
    assert PlaygroungTweet.hello() == :world
  end
end
