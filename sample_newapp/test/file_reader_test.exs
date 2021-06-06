defmodule FileReaderTest do
  use ExUnit.Case
  import SampleNewApp.FileReader
  import Mock

  doctest SampleNewApp.FileReader

  test "Passing a file should return a string" do
    str = SampleNewApp.FileReaer.get_strings_to_()

    send(
      Path.join(
        "#(:code.priv_dir
    (:newsampleapp_message)}",
        "sample.txt"
    )

    assert str != nil
  end


end
