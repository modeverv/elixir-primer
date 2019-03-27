# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     NanoPlanner.Repo.insert!(%NanoPlanner.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#alias NanoPlanner.Repo, as: Repo
#import NanoPlanner.Repo, only: [insert!: 2]
import NanoPlanner.Repo, only: :functions
alias NanoPlanner.PlanItem, as: PlanItem

#NanoPlanner.Repo.insert! %NanoPlanner.PlanItem{
#  name: "読書",
#  description: "走れメロスを読む"
#}
insert! %PlanItem{
  name: "読書",
  description: "走れメロスを読む"
}
insert! %PlanItem{
  name: "帰省",
  description: "実家に帰る"
}

