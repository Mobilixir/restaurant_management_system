defmodule ResmanWeb.SplashLive.SwiftUI do
  use ResmanNative, [:render_component, format: :swiftui]

  def render(assigns, _interface) do
    ~LVN"""
    <HStack id="splash-ios">
      <VStack>
        <.image url={~p"/images/splash/splash_mb_left.png"}>
          <:success style={[
            "resizable()",
            "scaledToFit()"
          ]}/>
        </.image>
          <Spacer />
          <VStack>
          <Text style={"font(.system(size: 60));"}>Res
            <Text verbatim=" " />
            <Text class="fg-orange">Man
            </Text>
          </Text>

          </VStack>
      </VStack>
      <VStack>
        <Spacer />
        <.image url={~p"/images/splash/splash_mb_right.png"}>
          <:success style={[
            "resizable()",
            "scaledToFit()"
          ]}/>
        </.image>
      </VStack>
    </HStack>
    """
  end
end
