defmodule Resman.Repo do
  use Ecto.Repo,
    otp_app: :resman,
    adapter: Ecto.Adapters.Postgres
end
