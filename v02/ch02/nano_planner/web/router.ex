defmodule NanoPlanner.Router do
  use NanoPlanner.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

#  pipeline :api do
#    plug :accepts, ["json"]
#  end

  scope "/", NanoPlanner do
    pipe_through :browser

    #    get "/", PageController, :index
    get "/", TopController, :index
    get "/plan_items", PlanItemsController, :index
    get "/plan_items/:id", PlanItemsController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", NanoPlanner do
  #   pipe_through :api
  # end
end
