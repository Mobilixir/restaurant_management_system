defmodule ResmanWeb.SampleLive.SwiftUI do
  use ResmanNative, [:render_component, format: :swiftui]

  def render(assigns, _interface) do
    ~LVN"""
    <VStack id="hello-ios">
      <HStack>
        <Text class={["bold(true)"]} >Hello iOS!</Text>
      </HStack>
    </VStack>
    """
  end
end
