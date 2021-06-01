defmodule SampleNewApp.FileReader do
  def get_strings_to_send(path) do
    File.read!(path)
    | String.split("\n")
  end
end
