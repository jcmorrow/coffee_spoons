defmodule CoffeeSpoons.CounterTest do
  use CoffeeSpoons.ModelCase

  alias CoffeeSpoons.Counter

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Counter.changeset(%Counter{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Counter.changeset(%Counter{}, @invalid_attrs)
    refute changeset.valid?
  end
end
