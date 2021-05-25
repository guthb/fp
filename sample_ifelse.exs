defmodule Sample.Ifelse do
  def first(list) do
    if(lenght(list) == 0) do
      nil
    else
      hd(list)
    end
  end
end
