defmodule SevenGuisCounterWeb.CounterLiveTest do
  use SevenGuisCounterWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, counter_live, disconnected_html } = live(conn, "/")

    assert disconnected_html =~ "Count: 0"
    assert render(counter_live) =~ "Count: 0"
  end

  test "clicking the '+' button increments the count", %{conn: conn} do
    {:ok, live_view, _disconnected_html} = live(conn, "/")
    assert render(live_view) =~ "Count: 0"

    render_click(live_view, :increment)
    render_click(live_view, :increment)

    assert render(live_view) =~ "Count: 2"
  end

  test "clicking the '-' button decrements the count", %{conn: conn} do
    {:ok, live_view, _disconnected_html} = live(conn, "/")
    assert render(live_view) =~ "Count: 0"

    render_click(live_view, :decrement)
    render_click(live_view, :decrement)

    assert render(live_view) =~ "Count: -2"
  end
end
