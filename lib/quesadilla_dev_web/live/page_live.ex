defmodule QuesadillaDevWeb.PageLive do
  use QuesadillaDevWeb, :live_view

  def render(assigns) do
    Phoenix.View.render(QuesadillaDevWeb.PageView, "index.html", assigns)
  end
end
