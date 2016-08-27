defmodule CoffeeSpoons.UserCreatesCounter do
  use CoffeeSpoons.AcceptanceCase, async: true

  test "user creates counter", %{session: session} do
    page =
      session
      |> visit("/")
      |> click_link("New Counter")
      |> fill_in("Name", with: "Coffee Spoons")
      |> click_on("Submit")
      |> find("body")

    assert has_text?(page, "Coffee Spoons")
  end
end
