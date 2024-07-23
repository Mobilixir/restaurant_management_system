defmodule ResmanWeb.SampleLive do
  use ResmanWeb, :live_view

  use LiveViewNative.LiveView,
    formats: [:swiftui],
    layouts: [
      swiftui: {ResmanWeb.Layouts.SwiftUI, :app}
    ]

  def render(assigns) do
    ~H"""
    <div>
      Hello from Web
    </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    Process.send_after(self(), :clear_flash, 3000)
    {:ok, socket}
  end

  @impl true
  def handle_info(:clear_flash, socket) do
    {:noreply, socket |> push_navigate(to: ~p"/users/log_in")}
  end
end
