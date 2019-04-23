
defmodule NanoPlanner.PlanItemsController do
  use NanoPlanner.Web, :controller
  alias NanoPlanner.PlanItem

  def index(conn, _params) do
#    plan_items = NanoPlanner.Repo.all(NanoPlanner.PlanItem)
#    plan_items = Repo.all(NanoPlanner.PlanItem)
    #plan_items = Repo.all(PlanItem)
    # plan_items = Repo.all(Ecto.Query.order_by(PlanItem, asc: :starts_at))
#    plan_items = PlanItem
#    |> Ecto.Query.order_by(asc: :starts_at)
#    |> Repo.all
#    plan_items = PlanItem
#    |> order_by(asc: :starts_at)
#    |> Repo.all
    plan_items = PlanItem
    |> order_by(asc: :starts_at, asc: :ends_at, asc: :id)
    |> Repo.all
    render conn, "index.html", plan_items: plan_items
  end

  def show(conn, params) do
    # plan_item = PlanItem |> Repo.get!(params["id"])
    plan_item =
      PlanItem
      |> Repo.get!(params["id"])
      |> PlanItem.convert_datetime
    render conn, "show.html", plan_item: plan_item
  end
end
