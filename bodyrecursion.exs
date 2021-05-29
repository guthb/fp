defmodule Sample.BodyRecursion do
  import Kernel, except: [length: 1]

  def first([]), do: nil
  def first([head | tail]), do: head

  def map([], _), do: []
  def map([head | tail], f)
    do: [f.(head) | map(tail, f)]

  def length([]), do: 0
  def length([_ | tail]),
    do: 1 + length(tail)

  def otherlength([_ | tail]),
    do: otherlength(tail, 1)
  def otherlength([], len),
    do: len
  def otherlenth([_ | tail], len),
    do: other_length(tail, len + 1)
end
