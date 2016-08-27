defmodule CoffeeSpoons.UserCreatesEntry do
  use CoffeeSpoons.AcceptanceCase, async: true

  test "user creates entry", %{session: session} do
    insert(:counter)

    page =
      session
      |> visit("/")
      |> click_link("New Entry")
      |> fill_in("entry_body", with: "Today was a good day")
      |> click_on("Submit")
      |> find("body")

    assert(has_text?(page, "Today was a good day"))
  end
end
