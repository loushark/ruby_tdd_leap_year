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

    it 'returns an array of six leap years between the years 2000 and 2020' do
      input1 = 2000
      input2 = 2020
      output = [2000, 2004, 2008, 2012, 2016, 2020]
      expect(test_leapYear.list_leap_years(input1, input2)).to eq output
    end

    it 'returns an array of leap years between the years 1950 and 2000' do
      input1 = 1950
      input2 = 2020
      output = [1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980, 1984, 1988, 1992, 1996, 2000, 2004, 2008, 2012, 2016, 2020]
      expect(test_leapYear.list_leap_years(input1, input2)).to eq output
    end
  end

  describe '#closest_leap_year' do
    it 'returns the closest leap year when the closest leap year is in the past' do
      input = 2001
      output = 2000
      expect(test_leapYear.closest_leap_year(input)).to eq output
    end

    it 'returns the closest leap year when the closest leap year is in the future' do
      input = 2007
      output = 2008
      expect(test_leapYear.closest_leap_year(input)).to eq output
    end

    it 'returns the two closest leap years when the input year is equal number of years away from closest leap year' do
      input = 2010
      output = 2008, 2012
      expect(test_leapYear.closest_leap_year(input)).to eq output
    end
  end
end
