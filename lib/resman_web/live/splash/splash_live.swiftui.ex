defmodule ResmanWeb.SplashLive.SwiftUI do
  use ResmanNative, [:render_component, format: :swiftui]

  def render(assigns, _interface) do
    ~LVN"""
    <VStack id="hello-ios">
      <HStack>
        <.image url={~p"/images/splash/splash_mb_left.png"} class="rotationEffect(.degrees(0))"/>
      </HStack>
      <HStack>
        <.image url={~p"/images/splash/splash_mb_right.png"} class="rotationEffect(.degrees(0))"/>
      </HStack>
    </VStack>
    """
  end
end
