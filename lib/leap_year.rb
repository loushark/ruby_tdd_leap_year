class LeapYear

  def is_a_leap_year?(year)
    if year % 4 != 0
      false
    elsif year % 4 == 0
      true
    end
  end
end
