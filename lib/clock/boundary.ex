defmodule Clock.Boundary do
  alias Clock.Core, as: Core

  def start_link(),
    do: GenServer.start_link(__MODULE__, :no_value)

  def init(_),
    do: {:ok, :no_value}

  def handle_cast({:tick, pid}, _state),
    do: {:noreply, Core.tick(pid)}
end
