defmodule HighSchoolSweetheart do
  def first_letter(name), do: name |> String.trim() |> String.first()

  def initial(name) do
    first_letter =
      name
      |> first_letter()
      |> String.upcase()

    "#{first_letter}."
  end

  def initials(full_name) do
    initials_list = String.split(full_name)
    Enum.map(initials_list, &initial/1) |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    """
    ❤-------------------❤
    |  #{initials(full_name1)}  +  #{initials(full_name2)}  |
    ❤-------------------❤
    """
  end
end
