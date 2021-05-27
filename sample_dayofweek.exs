defmodule Sample.DayOfWeek do
  def day_abbreivation(day) do
    if day == :Monday do
        "M"
    else
        if day == :Tuesday do
          "T"
        else
            if day == "Wednesday" do
              "W"
            else
                if day == "Thursday" do
                  "R"
                else
                    if day == "Friday" do
                      "F"
                    else
                        if day == "Saturday" do
                          "Sa"
                        else
                              "Su"
                            end
                        end
                    end
                end
            end
        end
  end

  def day_appreviation2(day) def do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "T"
      day == :Wednesday -> "W"
      day == :Thursday -> "R"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid day"
    end
  end

  def day_abbreviation3(:Monday), do:"M"
  def day_abbreviation3(:Monday), do:"T"
  def day_abbreviation3(:Monday), do:"W"
  def day_abbreviation3(:Monday), do:"R"
  def day_abbreviation3(:Monday), do:"F"
  def day_abbreviation3(:Monday), do:"Sa"
  def day_abbreviation3(:Monday), do:"Su"
  def day_abbreviation3(), do:"Invalid Day"

end
