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
    future_num = 0
    past_num = 0

    until is_a_leap_year?(year)
      future_num+=1
      year+=1
    end
    year -= future_num

    until is_a_leap_year?(year)
      past_num+=1
      year-=1
    end
    year += past_num

    if past_num < future_num
      year -= past_num
    elsif past_num > future_num
      year += future_num
    elsif past_num == future_num
      arr = [year -= past_num]
      year += past_num
      arr << year += future_num
    end
  end
end
