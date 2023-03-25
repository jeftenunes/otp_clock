defmodule Clock.Core do
  def tick(pid) do
    Process.sleep(60000)
    IO.puts("#{DateTime.now!("Etc/UTC")}")
    GenServer.cast(pid, {:tick, pid})
  end

  def start(pid), do: GenServer.cast(pid, {:tick, pid})
end
