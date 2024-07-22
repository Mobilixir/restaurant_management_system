defmodule Resman.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ResmanWeb.Telemetry,
      Resman.Repo,
      {DNSCluster, query: Application.get_env(:resman, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Resman.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Resman.Finch},
      # Start a worker by calling: Resman.Worker.start_link(arg)
      # {Resman.Worker, arg},
      # Start to serve requests, typically the last entry
      ResmanWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Resman.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ResmanWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
