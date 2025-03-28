defmodule Lasagna do
  @exp_min_in_oven 40
  @min_per_layer 2

  def expected_minutes_in_oven(), do: @exp_min_in_oven

  def remaining_minutes_in_oven(min_in_oven), do: @exp_min_in_oven - min_in_oven

  def preparation_time_in_minutes(num_layer), do: @min_per_layer * num_layer

  def total_time_in_minutes(num_layer, min_in_oven) do
    preparation_time_in_minutes(num_layer) + min_in_oven
  end

  def alarm(), do: "Ding!"
end
