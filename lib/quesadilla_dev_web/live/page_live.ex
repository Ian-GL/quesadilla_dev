defmodule QuesadillaDevWeb.PageLive do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(QuesadillaDevWeb.PageView, "index.html", assigns)
  end
end
