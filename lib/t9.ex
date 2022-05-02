defmodule T9 do
  @moduledoc """
  Just another implementation of the T9 keyboard.
  """

  @digitLetters %{
    "2" => ~w[a b c],
    "3" => ~w[d e f],
    "4" => ~w[g h i],
    "5" => ~w[j k l],
    "6" => ~w[m n o],
    "7" => ~w[p q r s],
    "8" => ~w[t u v],
    "9" => ~w[w x y z]
  }

  def combos(input) do
    combos(String.split(input, "", trim: true), [])
  end

  def combos([digit | []], _accumulator) do
    @digitLetters[digit]
  end

  def combos([digit | tail], accumulator) do
    # get the letters associated with the digit
    letters = @digitLetters[digit]

    # get all the suffixes and append the letters
    suffixes = combos(tail, accumulator)

    # make a new list
    for letter <- letters, suffix <- suffixes, do: letter <> suffix
  end
end
