defmodule CoffeeSpoons.Router do
  use CoffeeSpoons.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CoffeeSpoons do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/counters", CounterController
    resources "/entries", EntryController
  end

  # Other scopes may use custom stacks.
  # scope "/api", CoffeeSpoons do
  #   pipe_through :api
  # end
end
