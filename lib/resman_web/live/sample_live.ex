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
end
