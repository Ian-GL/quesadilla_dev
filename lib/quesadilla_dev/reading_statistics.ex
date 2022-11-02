defmodule QuesadillaDev.ReadingStatistics do
  def get_gender_groups(list) do
    Enum.frequencies_by(list, &(&1.author_gender))
  end

  def get_genre_groups(list) do
    Enum.frequencies_by(list, &(&1.genre))
  end
end
