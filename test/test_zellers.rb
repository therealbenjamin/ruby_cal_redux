require './cal'
require_relative 'helper'

class CalTest < MiniTest::Unit::TestCase


  def test_month_length_non_leap_feb
    assert_equal( 28, Month.new(2, 2013).days_per_month )
  end

  def test_month_length_leap_feb
    assert_equal( 29, Month.new(2, 2016).days_per_month )
  end

  def test_month_length_sept
    assert_equal( 30, Month.new(9, 2013).days_per_month )
  end

  def test_month_length_december
    assert_equal( 31, Month.new(12, 2013).days_per_month )
  end
  def test_first_day_of_month_05_2013
    assert_equal( "Friday", Month.new(3, 2013).zellers )
  end
  def test_first_day_of_month_09_2013
    assert_equal( "Saturday", Month.new(6, 2013).zellers )
  end
  def test_first_day_of_month_12_2012
    assert_equal( "Sunday", Month.new(9, 2013).zellers )
  end

  def test_not_leap_year
    year = Month.new(1, 1837)
    assert_equal(false, year.leap?)
  end

  def test_leap_year_2012
    year  = Month.new(2,2012)
    assert_equal(true, year.leap?)
  end

  def test_leap_year_1900
    year  = Month.new(2,1900)
    assert_equal(false, year.leap?)
  end

  def test_leap_year_2000
    year  = Month.new(2,2000)
    assert_equal(true, year.leap?)
  end

end