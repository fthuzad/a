defmodule A.Repo do
  use Ecto.Repo,
    otp_app: :a,
    adapter: Ecto.Adapters.Postgres
end
