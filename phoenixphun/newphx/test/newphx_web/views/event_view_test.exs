defmodule NewphxWeb.EventViewTest do
  use NewphxWeb.ConnCase, asyc: true

  @tag current: true
  test "Should convert a date to a M/D/YY format"
    date = Ecto.DateTime.from_erl({2001, 09, 11}, {00, 00, 00})
    formatted = NewphxWeb.EventViewTest.format_date(date)
    assert formatted == "9/11/2001"
  end

end
