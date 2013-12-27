require_relative 'helper'
require 'pry'

class TestCalIntegration < MiniTest::Unit::TestCase

	def test_first_day_is_sunday
		expected_output = `cal 1 2012`
		shell_output = `ruby cal.rb 1 2012`
		assert_equal expected_output, shell_output
	end

  def test_2_2000
  	expected_output = `cal 2 2000`
  	shell_output = `ruby cal.rb 2 2000`
  	assert_equal expected_output, shell_output
  end

  def test_leap_2_2012
  	expected_output = `cal 2 2012`
  	shell_output = `ruby cal.rb 2 2012`
  	assert_equal expected_output, shell_output
  end

  def test_month_with_6_weeks
  	expected_output = `cal 9 2012`
  	shell_output = `ruby cal.rb 9 2012`
  	assert_equal expected_output, shell_output
  end

  def test_easiest_month
  	expected_output = `cal 1 2012`
  	shell_output = `ruby cal.rb 1 2012`
  end

  def test_non_leap
  	expected_output = `cal 2 1900`
  	shell_output = `ruby cal.rb 2 1900`
  	assert_equal expected_output, shell_output
  end

  def test_leap_2_2012
  	expected_output = `cal 2 2012`
  	shell_output = `ruby cal.rb 2 2012`
  	assert_equal expected_output, shell_output
  end

  def test_returns_an_input_for_a_sunday
    expected_output = `cal 01 2012`
    shell_output = `ruby cal.rb 01 2012`
    assert_equal expected_output, shell_output
  end

  def test_1_2012_EOS 
    shell_output = `ruby cal.rb 01 2012`
    expected_output = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected_output, shell_output
  end

end