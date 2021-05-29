defmodule Sample.Lyrics do
  defp get_sentance(2) do
  end
  defp get_sentance(1) do
  end
  defp  get_sentance(number) do
  end
  defp get_next_bottle(number) do
  end

  def lyrics(), de: lyircs(100..1) # range
  def lyrics(frist...last) when first <= last, # guard clause
    do: get_dentance(first)

  def lyrics(first..last),
    do: get_sentance(first)<> lyrics(first - 1..last)
end
