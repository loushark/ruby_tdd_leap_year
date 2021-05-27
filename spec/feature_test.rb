require 'leap_year'

describe 'feature' do
# Acceptance criteria for exercise
  context 'years can be input and determined as a leap or not by returning true or false' do
    it do
      test_leapYear = LeapYear.new
      expect(test_leapYear.is_a_leap_year?(2000)).to eq true
      expect(test_leapYear.is_a_leap_year?(1970)).to eq false
      expect(test_leapYear.is_a_leap_year?(1900)).to eq false
      expect(test_leapYear.is_a_leap_year?(1988)).to eq true
      expect(test_leapYear.is_a_leap_year?(1500)).to eq false
  end
end
