defmodule ResmanWeb.SplashLive do
  use ResmanWeb, :live_view

  use LiveViewNative.LiveView,
    formats: [:swiftui],
    layouts: [
      swiftui: {ResmanWeb.Layouts.SwiftUI, :app}
    ]

  @impl true
  def render(assigns) do
    ~H"""
    <div class="flex flex-1 justify-between">
      <img
        src={~p"/images/splash/splash_bg_left.svg"}
        alt=""
        class="h-full w-2/6 animate-slidein opacity-0 [--slidein-delay:400ms]"
      />
      <img
        src={~p"/images/splash/splash_bg_right.svg"}
        alt=""
        class="h-full w-2/6 animate-slidein opacity-0 [--slidein-delay:800ms]"
      />
      <div class="flex h-screen w-screen justify-center place-items-center absolute animate-slidein opacity-0 [--slidein-delay:1600ms]">
        <p class="font-mono text-5xl px-1">
          Res<p class="text-[#FF7B2C] font-mono text-5xl px-1">Man</p>
        </p>
      </div>
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
