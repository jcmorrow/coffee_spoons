defmodule CoffeeSpoons.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import Ecto.Model
      import Ecto.Query, only: [from: 2]
      import CoffeeSpoons.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(CoffeeSpoons.Repo)
    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(CoffeeSpoons.Repo, self())

    {:ok, session} = Wallaby.start_session(metadata: metadata)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(CoffeeSpoons.Repo, {:shared, self()})
    end

    {:ok, session: session}
  end
end
