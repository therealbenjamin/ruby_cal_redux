require 'pry'

class Month

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

	attr_reader :month, :year  

	def initialize month, year 
		@month = month 
		@year = year 
	end

	def zellers 
	  month = @month
	  year = @year
	  if month == 1 || month == 2
	    month += 12
	    year = @year - 1
	  end
	  start = ( 1 + ( (13 * (month + 1) ) / 5) + (year % 100) + ((year % 100) / 4) + (( year / 100).floor / 4) + (5 * (year / 100).floor) ) % 7
	  weekdays = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
	  weekdays[start]
	end

	def leap? 
		if @year % 400 == 0
			true 
		elsif @year % 100 == 0 
			false 
		elsif @year % 4 == 0 
			true 
		else 
			false 
		end
	end

	def days_per_month
    days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if @month - 1 == 1 && self.leap?
      return 29
    else
      days[@month - 1]
    end
  end


  def month_format 
    start = self.zellers 
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']
    day_one = days.index(start)
    temp = " "
    day_one.times do
    	temp.prepend("   ")
    end

    temp << (1..9).to_a.join("  ")
    temp << " "
    temp << (10..self.days_per_month).to_a.join(" ")
    temp = temp.scan(/.{1,21}/)
    month_name = MONTH_NAMES[@month - 1]
    first_line = "#{month_name} #{@year}".center(20)
    second_line = "Su Mo Tu We Th Fr Sa"
    output = temp.unshift(second_line).unshift(first_line)

    output.each do |x|
    	x.rstrip!
    end

    if output.size == 6 
 			output.push("\n\n")
    elsif output.size == 7
    	output.push("\n")
    else
    	output
    end      
  end
end
