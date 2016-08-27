Ecto.Adapters.SQL.Sandbox.mode(CoffeeSpoons.Repo, :manual)
{:ok, _} = Application.ensure_all_started(:wallaby)
{:ok, _} = Application.ensure_all_started(:ex_machina)
Application.put_env(:wallaby, :base_url, CoffeeSpoons.Endpoint.url)

ExUnit.start
