defmodule A.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      A.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: A.PubSub}
      # Start a worker by calling: A.Worker.start_link(arg)
      # {A.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: A.Supervisor)
  end
end
