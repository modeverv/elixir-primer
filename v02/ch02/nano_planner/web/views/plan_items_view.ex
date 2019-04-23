defmodule NanoPlanner.PlanItemsView do
  use NanoPlanner.Web, :view
  require Logger
  alias Timex.Format.DateTime.Formatters.Strftime

  def format_duration(item) do
    [formats_starts_at(item), " - ", formats_ends_at(item)] |> Enum.join("")
  end

  defp formats_starts_at(item) do
    time_zone = Application.get_env(:nano_planner, :default_time_zone)
    #IO.inspect time_zone |> Logger.info
    w = format_wday(item.starts_at)
    fmt = if item.starts_at.year != Timex.now(time_zone).year do
     "%Y年%-m月%-d日(#{w}) %H:%M"
    else
      "%-m月%-d日(#{w}) %H:%M"
    end
    Logger.debug fmt
    Strftime.format! item.starts_at, fmt
  end

  defp formats_ends_at(item) do
    w = format_wday(item.ends_at)
    fmt = cond do
      Timex.to_date(item.ends_at) == Timex.to_date(item.starts_at) ->
	"%H:%M"
      item.ends_at.year == item.starts_at.year ->
	"%-m月%-d日(#{w}) %H:%M"
      true ->
	"%Y年%-m月%-d日#{w} %H:%M"
    end
    Strftime.format! item.ends_at, fmt
  end

  def format_datetime(datetime) do
    w = format_wday(datetime)
    Strftime.format! datetime, "%Y年%m月%d日(#{w}) %H:%M"
  end

  defp format_wday(datetime) do
    Enum.at ~w(日 月 火 水 木 金 土),
      Timex.days_to_beginning_of_week(datetime, :sun)
  end

end

  
