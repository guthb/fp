defmodule ModulePlayground do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias ModulePlayground.Misc.Util.Math, as: MyMath

  require Integer

  def say_here do
    # IO.puts("i'm here")
    inspect(" i'm here")
  end

  def inspect(param1) do
    puts("Starting Output")
    puts(param1)
    puts("Ending output")
  end

  def print_sum do
    MyMath.add(1, 2)
  end
end
