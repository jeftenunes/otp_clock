defmodule Clock do
  alias Clock.Boundary, as: Server
  alias Clock.Core, as: Core

  def start do
    {:ok, pid} = Server.start_link()
    Core.start(pid)
  end
end
