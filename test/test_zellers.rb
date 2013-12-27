require './cal'
require_relative 'helper'

# class TestZellers < MiniTest::Unit::TestCase

# 	def test_first_of_month
#     first = Month.zellers("January", "2012")
#     assert_equal(1, first)
#   end

# 	def test_leap_year
# 	 	leap = Zellers.calculate("2", "2012")
# 	 	assert_equal(4, leap)
# 	end

# 	def test_month_eliza_said_starts_with_sat
# 		sat = Zellers.calculate("01", "2012")
# 		assert_equal(1, sat) 
# 	end

#   def test_non_leap
#     non_leap = Zellers.calculate("02", "1900")
#     assert_equal(5, non_leap)
#   end

#   def test_leap_div
#     leap_div = Zellers.calculate("2", "2000")
#     assert_equal(3, leap_div)
#   end

#   def test_month_with_6_weeks
#     six_weeks = Zellers.calculate("9", "2012")
#     assert_equal(0, six_weeks)
#   end

# end


class CalendarTest < MiniTest::Unit::TestCase


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

  def test04a_leap_year_huh_random
    m = Month.new( 1, 1837 )
    assert_equal(false, m.leap?)
  end

  def test04b_leap_year_huh_when_4
    yr  = Month.new(2,2012)
    assert_equal(true, yr.leap?)
  end

  def test04c_leap_year_huh_when_100
    yr  = Month.new(2,1900)
    assert_equal(false, yr.leap?)
  end

  def test04d_leap_year_huh_when_400
    yr  = Month.new(2,2000)
    assert_equal(true, yr.leap?)
  end

end