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
            <Text style={
              'foregroundColor(Color(red:255/255, green:123/255, blue:44/255))'
            }>Man
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
