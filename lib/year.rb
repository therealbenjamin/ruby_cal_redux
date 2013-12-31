require_relative './month'
require 'pry' 

class Year

  def initialize(month,year)
    @month = month
    @year = year
  end

  def year_head 
  	yr_head = "#{@year}".center(64) + "\n"
  	puts yr_head 
  end

  def week
  	week = "Su Mo Tu We Th Fr Sa"
  	row = week + "  " + week + "  " + week + "\n"
  end

  def months_head_1 
		month_head = "January".center(20) + "     February".center(20) + "       March".center(20)
  end

  def months_head_2
  	month_head = "April".center(20) + "     May".center(20) + "       June".center(20)
  end

  def months_head_3
  	month_head = "July".center(20) + "     August".center(20) + "       September".center(20)
  end

  def months_head_4
  	month_head_1 = "October".center(20) + "     November".center(20) + "       December".center(20)
  end



  def print_year 
  	year_array = []
  	12.times do |this|
  		temp = Month.new(this + 1, @year)
  		year_array.push(temp.month_format)
  	end
  	puts year_head
  	puts months_head_1
  	puts week
  	puts months_head_2
  	puts week 
  	puts months_head_3
  	puts week 
  	puts months_head_4
  	puts week 
  	
  end





end