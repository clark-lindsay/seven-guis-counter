defmodule SevenGuisCounterWeb.CounterLive do
  use SevenGuisCounterWeb, :live_view

  def mount(_params, _session, socket) do
    { :ok, assign(socket, :count, 0) }
  end

  def render(assigns) do
    ~L"""
    <p>Count: <%= @count %></p>
    <button phx-click="decrement">-</button>
    <button phx-click="increment">+</button>
    """
  end

  def handle_event("increment", _session, socket) do
    {:noreply, assign(socket, :count, socket.assigns.count + 1)}
  end

  def handle_event("decrement", _session, socket) do
    {:noreply, assign(socket, :count, socket.assigns.count - 1)}
  end
end
