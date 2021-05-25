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
  end
end
