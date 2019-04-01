defmodule NanoPlanner.PlanItemsView do
  use NanoPlanner.Web, :view
  alias Timex.Format.DateTime.Formatters.Strftime

  def format_duration(item) do
    [formats_starts_at(item), " - ", formats_ends_at(item)] |> Enum.join("")
  end

  defp formats_starts_at(item) do
    Strftime.format! item.starts_at, "%Y年%m月%d日 %H:%M"
  end

  defp formats_ends_at(item) do
    Strftime.format! item.ends_at, "%Y年%m月%d日 %H:%M"
  end
  
  
end

  
