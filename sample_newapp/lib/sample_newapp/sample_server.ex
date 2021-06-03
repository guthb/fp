defmodule SampleNewApp.Server do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :o, name: :sampe_server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  # async
  def handle_cast({:message, message}, _) do
    SampleNewApp.Message.sent(message)
    {:noreply, %A{}}
  end

  def message(message) do
    GenServer.cast(:message_server, {:message, message})
  end
end
