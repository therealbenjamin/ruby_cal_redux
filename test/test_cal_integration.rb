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

end