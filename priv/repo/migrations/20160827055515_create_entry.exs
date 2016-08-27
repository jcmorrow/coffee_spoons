defmodule CoffeeSpoons.Repo.Migrations.CreateEntry do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :body, :string

      timestamps()
    end

  end
end
