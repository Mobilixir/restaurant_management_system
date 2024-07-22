defmodule ResmanWeb.Layouts.SwiftUI do
  use ResmanNative, [:layout, format: :swiftui]

  embed_templates "layouts_swiftui/*"
end
