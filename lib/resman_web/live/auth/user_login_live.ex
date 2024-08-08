defmodule ResmanWeb.UserLoginLive do
  use ResmanWeb, :live_view
  use ResmanNative, :live_view

  @login_options [{"Email", "email"}, {"Username", "username"}]

  def render(assigns) do
    ~H"""
    <div class="flex flex-1 justify-between">
      <img src={~p"/images/splash/splash_bg_left.svg"} alt="" class="h-full w-2/6" />
      <img src={~p"/images/splash/splash_bg_right.svg"} alt="" class="h-full w-2/6" />
      <div class="grid h-screen w-screen place-items-center absolute">
        <div class="mx-auto max-w-sm">
          <.header class="text-center">
            Sign in to account
            <:subtitle>
              Don't have an account?
              <.link navigate={~p"/users/register"} class="font-semibold text-brand hover:underline">
                Sign up
              </.link>
              for an account now.
            </:subtitle>
          </.header>

          <.simple_form for={@form} id="login_form" action={~p"/users/log_in"} phx-update="replace">
            <.input id="login-username" field={@form[:user_name]} placeholder="Username" required />
            <.input field={@form[:password]} type="password" placeholder="Password" required />

            <:actions>
              <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
              <.link href={~p"/users/reset_password"} class="text-sm font-semibold">
                Forgot your password?
              </.link>
            </:actions>
            <:actions>
              <.button phx-disable-with="Signing in..." class="w-full">
                Sign in <span aria-hidden="true">→</span>
              </.button>
            </:actions>
          </.simple_form>
        </div>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    form = to_form(%{"login_as" => "username"}, as: "user")
    {:ok, assign(socket, form: form)}
  end

  # def handle_event("change-radio-input", %{"user" => user_params}, socket) do
  #   %{"selected" => selected} = user_params
  #   form = to_form(%{"selected" => selected}, as: "user")
  #   socket = socket |> assign(form: form)
  #   {:noreply, socket}
  # end
end
