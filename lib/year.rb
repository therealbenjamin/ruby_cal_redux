require_relative './month'
require 'pry' 

class Year

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

  def initialize month,year
    @month = month
    @year = year
  end


	def days_per_month
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if @month - 1 == 1 && self.leap?
      29
    else
      days_in_month[@month - 1]
    end
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

  	puts year_head

  	year_array = []
  	12.times do |this|
  		temp = Month.new(this + 1, @year)
  		year_array.push(temp.month_year_format)
  	end


		month_height = year_array[0].length
  	4.times do 
  		temp = []
  		3.times do 
  			temp << year_array[0]
  			year_array.shift 
  		end

  		month_height.times do 
  			temp.each do |temp|
  				print temp[0]
  				temp.shift 
  			end 
  			puts ""
  		end 
  		puts ""
  	end
  	
	end 





end