defmodule QuesadillaDevWeb.PageControllerTest do
  use QuesadillaDevWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "My name is Ian"
  end
end
