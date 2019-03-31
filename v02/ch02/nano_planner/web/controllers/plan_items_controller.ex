
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
end
