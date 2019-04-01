defmodule NanoPlanner.PlanItemsView do
  use NanoPlanner.Web, :view
  require Logger
  alias Timex.Format.DateTime.Formatters.Strftime

  def format_duration(item) do
    [formats_starts_at(item), " - ", formats_ends_at(item)] |> Enum.join("")
  end

  defp formats_starts_at(item) do
    time_zone = Application.get_env(:nano_planner, :default_time_zone)
    IO.inspect time_zone |> Logger.info
    fmt = if item.starts_at.year != Timex.now(time_zone).year do
     "%Y年%-m月%-d日 %H:%M"      
    else
      "%-m月%-d日 %H:%M"
    end
    Logger.debug fmt
    Strftime.format! item.starts_at, fmt
  end

  defp formats_ends_at(item) do
    fmt = cond do
      Timex.to_date(item.ends_at) == Timex.to_date(item.starts_at) ->
	"%H:%M"
      item.ends_at.year == item.starts_at.year ->
	"%-m月%-d日 %H:%M"
      true ->
	"%Y年%-m月%-d日 %H:%M"
    end
    Logger.debug fmt
    Strftime.format! item.ends_at, fmt
  end
  
  
end

  
