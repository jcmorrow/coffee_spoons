defmodule CoffeeSpoons.Factory do
  use ExMachina.Ecto, repo: CoffeeSpoons.Repo

  def counter_factory do
    %CoffeeSpoons.Counter{
      name: "Coffee Spoons",
    }
  end
end
