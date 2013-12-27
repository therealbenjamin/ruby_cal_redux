class Month

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

	def initialize month, year 
		@month = month 
		@year = year 
	end

	def zellers 
	  m = @month
	  y = @year
	  if m == 1 || m == 2
	    m += 12
	    y = @year - 1
	  end
	  start_num = ( 1 + ( (13 * (m + 1) ) / 5) + (y % 100) + ((y % 100) / 4) + (( y / 100).floor / 4) + (5 * (y / 100).floor) ) % 7
	  weekdays = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
	  weekdays[start_num]
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
    daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
    if @month - 1 == 1 && self.leap?
      return 29
    else
      daysInMonth[@month - 1]
    end
  end


  def month_format 
    start = self.zellers 
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday',]
    startday = days.index(start)

    format = " "
    startday.times do
    format.prepend("   ")
    end

    format += (1..9).to_a.join("  ")
    format += " "
    format += (10..self.days_per_month).to_a.join(" ")
    output = format.scan(/.{1,21}/)
    output.each do |o|
      o.rstrip!
    end

    month_name = MONTH_NAMES[@month - 1]
    first_line = "#{month_name} #{@year}".center(20).rstrip
    second_line = "Su Mo Tu We Th Fr Sa"
    output.unshift(second_line).unshift(first_line)
    
  end

	



end
