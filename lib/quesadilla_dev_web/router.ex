defmodule QuesadillaDevWeb.Router do
  use QuesadillaDevWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :root_layout do
    plug :put_root_layout, {QuesadillaDevWeb.LayoutView, :root}
  end

  pipeline :work_layout do
    plug :put_root_layout, {QuesadillaDevWeb.LayoutView, :work}
  end

  scope "/", QuesadillaDevWeb do
    pipe_through :browser
    pipe_through :root_layout

    live "/", PageLive
  end

  scope "/", QuesadillaDevWeb do
    pipe_through :browser
    pipe_through :work_layout

    get "/work", PageController, :show_work
    get "/open-source-contributions", PageController, :show_prs
  end

  # Other scopes may use custom stacks.
  # scope "/api", QuesadillaDevWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: QuesadillaDevWeb.Telemetry
    end
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
