require 'leap_year'

describe LeapYear do
  let(:test_leapYear) { LeapYear.new }

  describe '#is_a_leap_year?' do
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

  describe '#list_leap_years' do
    it 'returns an array of three leap years between the years 2000 and 2010' do
      input1 = 2000
      input2 = 2010
      output = [2000, 2004, 2008]
      expect(test_leapYear.list_leap_years(input1, input2)).to eq output
    end
  end
end
