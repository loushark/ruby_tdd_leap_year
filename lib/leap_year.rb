class LeapYear

  def is_a_leap_year?(year)
    if year % 4 == 0 && year % 100 != 0
      true
    elsif year % 400 != 0
      false
    elsif year % 400 == 0
      true
    elsif year % 100 == 0
      false
    end
  end
end
