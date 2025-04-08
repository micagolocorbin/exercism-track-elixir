defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)

  def compare(secret_number, guess) when is_number(guess) and secret_number == guess,
    do: "Correct"

  def compare(secret_number, guess)
      when is_number(guess) and secret_number == guess + 1,
      do: "So close"

  def compare(secret_number, guess) when is_number(guess) and secret_number == guess - 1,
    do: "So close"

  def compare(secret_number, guess) when is_number(guess) and secret_number < guess,
    do: "Too high"

  def compare(secret_number, guess) when is_number(guess) and secret_number > guess, do: "Too low"

  def compare(_secret_number, _guess), do: "Make a guess"
end
