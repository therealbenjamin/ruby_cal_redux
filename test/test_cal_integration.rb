require_relative 'helper'

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

  def test_2_2015
    expected_output = `cal 2 2015`
    shell_output = `ruby cal.rb 2 2015`
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

  def test_random_full_year
    expected_output = `cal 2006`
    shell_output = `ruby cal.rb 2006`
    assert_equal expected_output, shell_output
  end 

  def test_full_leap_year
    expected_output = `cal 1904`
    shell_output = `ruby cal.rb 1904`
    assert_equal expected_output, shell_output
  end

  def test_1900 
    expected_output = `cal 1900`
    shell_output = `ruby cal.rb 1900`
    assert_equal expected_output, shell_output 
  end

  def test_2000 
    expected_output = `cal 2000`
    shell_output = `ruby cal.rb 2000`
    assert_equal expected_output, shell_output 
  end

  def test_2012 
    expected_output = `cal 2012`
    shell_output = `ruby cal.rb 2012`
    assert_equal expected_output, shell_output 
  end

  def test_2015
    expected_output = `cal 2015`
    shell_output = `ruby cal.rb 2015`
    assert_equal expected_output, shell_output 
  end

end