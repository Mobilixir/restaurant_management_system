defmodule ResmanWeb.SplashLive.SwiftUI do
  use ResmanNative, [:render_component, format: :swiftui]

  def render(assigns, _interface) do
    ~LVN"""
    <VStack id="splash-ios" style={
        "
          frame(maxHeight: .infinity);
          frame(maxWidth: .infinity);
        "
      }>
        <AsyncImage url={~p"/images/splash/splash_mb.png"} style={
          "
            resizable();
            scaledToFit();
            scaleEffect(0.49);
          "
          }/>
    </VStack>
    """
  end
end
