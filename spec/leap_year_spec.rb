require 'leap_year'

describe LeapYear do
  let(:test_leapYear) { LeapYear.new }

  context 'is a leap Year' do
    it 'returns true when a leap year is added' do
      input = 2000
      output = true
      expect(test_leapYear.is_a_leap_year?(input)).to eq output
    end

    it 'returns true when a leap year is added' do
      input = 2008
      output = true
      expect(test_leapYear.is_a_leap_year?(input)).to eq output
    end
  end

  context 'is not a leap Year' do
    it 'returns false when a non leap year is added' do
      input = 1700
      output = false
      expect(test_leapYear.is_a_leap_year?(input)).to eq output
    end

    it 'returns false when a non leap year is added' do
      input = 2009
      output = false
      expect(test_leapYear.is_a_leap_year?(input)).to eq output
    end
  end
end
