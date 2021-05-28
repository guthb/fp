defmodule Sample.Enum do

  # def first(list) when length(list) == 0, do: nil
  def first([]), do: nil
  def first ([head | _]), do: head

  # def first ([head | ]), do: head

  # def first([], val), do: val

  # def add (list, val \\ 0 ) do
  #   trace(val)
  #   [val | list]
  # end

  # defp  trace(sting) do
  #   IO.puts("the value passed in was #{string}")
  # end

  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end
end
