defmodule NanoPlanner.PlanItemsView do
  use NanoPlanner.Web, :view

  def format_duration(item) do
    "#{item.starts_at} - #{item.ends_at}"
  end
  
end

  
