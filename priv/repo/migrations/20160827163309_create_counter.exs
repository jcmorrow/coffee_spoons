defmodule CoffeeSpoons.Repo.Migrations.CreateCounter do
  use Ecto.Migration

  def change do
    create table(:counters) do
      add :name, :string

      timestamps()
    end
  end
end
