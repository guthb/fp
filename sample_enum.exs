defmodule Sample.Enum do
  def first([]) do
    nil
  end

  def first([head | _]) do
    head
  end
end
