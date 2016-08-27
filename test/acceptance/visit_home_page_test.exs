defmodule CoffeeSpoons.VisitHomePage do
  use CoffeeSpoons.AcceptanceCase, async: true

  test "visit home page", %{session: session} do
    session
    |> visit("/")

    assert has_text?(find(session, "body"), "Coffee Spoons")
  end
end
