defmodule FreelancerRates do
  @hour_per_day 8
  @days_per_month 22

  def daily_rate(hourly_rate) do
    hourly_rate * @hour_per_day * 1.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  def monthly_rate(hourly_rate, discount) do
    (daily_rate(hourly_rate) * @days_per_month)
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    month = monthly_rate(hourly_rate, discount)

    (budget / month * @days_per_month)
    |> Float.floor(1)
  end
end
