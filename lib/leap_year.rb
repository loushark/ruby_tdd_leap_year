class LeapYear

  def is_a_leap_year?(year)
    if year % 400 == 0
      true
    elsif year % 100 == 0 && year % 400 != 0
      false
    elsif year % 4 == 0 && year % 100 != 0
      true
    elsif year % 4 != 0
      false
    end
  end

  def list_leap_years(start_year, end_year)
    (start_year..end_year).filter_map do |year|
      year if is_a_leap_year?(year)
    end
  end

  def closest_leap_year(year)

    past_year = closest_past_leap_year(year)
    future_year = closest_future_leap_year(year)


    if year - past_year < future_year - year
      past_year
    elsif future_year - year < year - past_year
      future_year
    elsif year - past_year == future_year - year
      [past_year, future_year]
    end
  end

  private

  def closest_past_leap_year(year)
    until is_a_leap_year?(year)
      year-=1
    end
    year
  end

  def closest_future_leap_year(year)
    until is_a_leap_year?(year)
      year+=1
    end
    year
  end
end
