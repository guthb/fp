defmodule NewphxWeb.Router do
  use NewphxWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline  :authorized do
    plug :browser
    plug NewphxWeb.AuthorizedPlug
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", NewphxWeb do
    pipe_through(:browser)

    get "/", PageController, :index
    get "/login", LoginController, :index
    post "/login", LoginController, :login

    get "/", EventController, :list
    get "//new", EventController, :create
    post "/new", EventsController, :add
    get "/id", EventsController, :show
    post "/events/:id/reserve", EventsController, :reserve
  end


  # scope "/events", NewphxWeb do
  #   pipe_through :authorized
  #   get "/", EventController, :list
  #   get "//new", EventController, :create
  #   post "/new", EventsController, :add
  #   get "/id", EventsController, :show
  # end

  # Other scopes may use custom stacks.
  # scope "/api", NewphxWeb do
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
      pipe_through(:browser)
      live_dashboard("/dashboard", metrics: NewphxWeb.Telemetry)
    end
  end
end
