defmodule Starbucks do
@doc """
  A part of Elixir Hour’s example code from the first week on the GenServer topic by Mr. Jero.
  Contents:
  - @doc :  Documented function
  - @module : Documenting Modules
  - spawn, receive, and send messages
"""
  def listen() do
    receive do
      {:message_type, value} ->
        dbg(value)
    end
  end

  def start_listener do
    spawn(fn -> listen() end)
  end
end
