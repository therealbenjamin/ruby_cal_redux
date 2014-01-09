class Month

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

	def initialize month, year 
		@month = month 
		@year = year 
	end

	def zellers 
	  month = @month
	  year = @year
	  weekdays = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']

	  if month == 1 || month == 2
	    month += 12
	    year = @year - 1
	  end
	  start = ( 1 + ( (13 * (month + 1) ) / 5) + (year % 100) + ((year % 100) / 4) + (( year / 100).floor / 4) + (5 * (year / 100).floor) ) % 7
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
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if @month - 1 == 1 && self.leap?
      29
    else
      days_in_month[@month - 1]
    end
  end

  def month_head_with_year
    month_name = MONTH_NAMES[@month - 1]
    print "#{month_name} #{@year}".center(20)
  end

  def month_head_without_year
    month_name = MONTH_NAMES[@month - 1]
    print "#{month_name}"
  end

  def month_format(with_year=false)
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']
    day_one = days.index(self.zellers)
    temp = " "

    day_one.times do
    	temp.prepend("   ")
        end

    temp << (1..9).to_a.join("  ")
    temp << " "
    temp << (10..self.days_per_month).to_a.join(" ")
    temp = temp.scan(/.{1,21}/)
    month_name = MONTH_NAMES[@month - 1]

    first_line = with_year ? "#{month_name} #{@year}".center(20) : "#{month_name}".center(20)
    second_line = "Su Mo Tu We Th Fr Sa"
    output = temp.unshift(second_line).unshift(first_line)

    output.each do |this|
    	this.rstrip!
    end

    if with_year
      if output.size == 6 
          output.push("\n\n")
      elsif output.size == 7
        output.push("\n")
      else
        output
      end  
    else
      output 
    end  
  end
end
