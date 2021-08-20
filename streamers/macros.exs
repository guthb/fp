defmodule MyMacros do
  defmacro my_unless(expr, opts) do
    quote do
      if (!unquote(expr), unquote(opts))
    end
  end
end


# my_unless 1 + 2 + != 3 do
#   IO.puts "it is false"
# end
