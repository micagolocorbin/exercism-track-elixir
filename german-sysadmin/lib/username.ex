defmodule Username do
  def sanitize(username) do
    username
    |> Enum.flat_map(&replace_german/1)
    |> Enum.filter(&remove_unnecessary/1)
  end

  defp replace_german(char) do
    case char do
      ?ä -> ~c"ae"
      ?ö -> ~c"oe"
      ?ü -> ~c"ue"
      ?ß -> ~c"ss"
      _ -> [char]
    end
  end

  defp remove_unnecessary(char) do
    case char do
      char when char in ?a..?z -> true
      ?_ -> true
      _ -> false
    end
  end
end
