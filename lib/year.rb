require_relative './month'
require 'pry' 

class Year

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

  def initialize month, year
    @month = month
    @year = year
  end

  def year_head # Create header for year entered by user.
  	year_head = "#{@year}".center(64) + "\n"
  	puts year_head 
  end

  def week # Create week header for each month. Potentially unnecessary. 
  	week = "Su Mo Tu We Th Fr Sa"
  	row = week + "  " + week + "  " + week + "\n"
  end


  def print_year # NOT final. Need to refactor to do this programatically. 

  	# Push properly formatted month arrays into an array of the year submitted by the user. 
  	year_array = []
  	12.times do |this|
  		temp = Month.new(this + 1, @year)
  		year_array.push(temp.month_year_format)
  	end

  	# Set month variables for month arrays so it looks slightly less insane and confusing; set spacing. 
  	jan = year_array[0]
  	space = 20 - jan[6].length 
  	jan[6] << (" " * space)
  	space = 20 - jan[7].length unless jan[7].nil?
  	jan[7] << (" " * space) unless jan[7].nil?

  	feb = year_array[1]
  	space = 20 - feb[6].length 
  	feb[6] << (" " * space)
  	space = 20 - feb[7].length unless feb[7].nil? 
  	feb[7] << (" " * space) unless feb[7].nil?
  	
  	mar = year_array[2]

  	apr = year_array[3]
  	space = 20 - apr[6].length 
  	apr[6] << (" " * space)
  	space = 20 - apr[7].length unless apr[7].nil? 
  	apr[7] << (" " * space) unless apr[7].nil?

  	may = year_array[4]
  	space = 20 - may[6].length
  	may[6] << (" " * space)
  	space = 20 - may[7].length unless may[7].nil?
  	may[7] << (" " * space) unless may[7].nil?

  	jun = year_array[5]

  	jul = year_array[6]
  	space = 20 - jul[6].length 
  	jul[6] << (" " * space)
  	space = 20 - jul[7].length unless jul[7].nil?
  	jul[7] << (" " * space) unless jul[7].nil?

  	aug = year_array[7]
  	space = 20 - aug[6].length 
  	aug[6] << (" " * space)
  	space = 20 - aug[7].length unless aug[7].nil?
  	aug[7] << (" " * space) unless aug[7].nil?

  	sep = year_array[8]

  	oct = year_array[9]
  	space = 20 - oct[6].length  
  	oct[6] << (" " * space)
  	space = 20 - oct[7].length unless oct[7].nil?
  	oct[7] << (" " * space) unless oct[7].nil?

  	nov = year_array[10]
  	space = 20 - nov[6].length  
  	nov[6] << (" " * space)
  	space = 20 - nov[7].length unless nov[7].nil?
  	nov[7] << (" " * space) unless nov[7].nil?

  	dec = year_array[11]

  	# This is where the magic should happen. There is presently no magic. Printing is line by line, year tests still borked. MUST REFACTOR!! 

		puts year_head

  	print "#{jan[0]}" + "       " +  "#{feb[0]}".center(20) + "    "  "#{mar[0]}" + "\n"
  	print week
  	print "#{jan[2]}  #{feb[2]}  #{mar[2]}" + "\n"
  	print "#{jan[3]}  #{feb[3]}  #{mar[3]}" + "\n"
  	print "#{jan[4]}  #{feb[4]}  #{mar[4]}" + "\n"
  	print "#{jan[5]}  #{feb[5]}  #{mar[5]}" + "\n"
  	print "#{jan[6]}  #{feb[6]}  #{mar[6]}" + "\n"
  	print "#{jan[7]}" if !jan[7].nil?  
  	print "#{feb[7]}" if !feb[7].nil?
  	print "#{mar[7]}" if !mar[7].nil?

  	print "#{apr[0]}" + "       " + "#{may[0]}".center(20) + " " + "#{jun[0]}".center(20) + "\n"
  	print week 
  	print "#{apr[2]}  #{may[2]}  #{jun[2]}" + "\n"
  	print "#{apr[3]}  #{may[3]}  #{jun[3]}" + "\n"
  	print "#{apr[4]}  #{may[4]}  #{jun[4]}" + "\n"
  	print "#{apr[5]}  #{may[5]}  #{jun[5]}" + "\n"
  	print "#{apr[6]}  #{may[6]}  #{jun[6]}" + "\n"
  	print "#{apr[7]}" if !apr[7].nil?  
  	print "#{may[7]}" if !may[7].nil?
  	print "#{jun[7]}" if !jun[7].nil?

  	print "#{jul[0]}" + "       " + "#{aug[0]}".center(20) + "  " + "#{sep[0]}".center(20) + "\n"
  	print week 
  	print "#{jul[2]}  #{aug[2]}  #{sep[2]}" + "\n"
  	print "#{jul[3]}  #{aug[3]}  #{sep[3]}" + "\n"
  	print "#{jul[4]}  #{aug[4]}  #{sep[4]}" + "\n"
  	print "#{jul[5]}  #{aug[5]}  #{sep[5]}" + "\n"
  	print "#{jul[6]}  #{aug[6]}  #{sep[6]}" + "\n"
  	print "#{jul[7]}" if !jul[7].nil?  
  	print "#{aug[7]}" if !aug[7].nil?
  	print "#{sep[7]}" if !sep[7].nil?

  	print "#{oct[0]}" + "      " + "#{nov[0]}".center(20) + "  " + "#{dec[0]}".center(20) + "\n"
  	print week 	
  	print "#{oct[2]}  #{nov[2]}  #{dec[2]}" + "\n"
  	print "#{oct[3]}  #{nov[3]}  #{dec[3]}" + "\n"
  	print "#{oct[4]}  #{nov[4]}  #{dec[4]}" + "\n"
  	print "#{oct[5]}  #{nov[5]}  #{dec[5]}" + "\n"
  	print "#{oct[6]}  #{nov[6]}  #{dec[6]}" + "\n"
  	print "#{oct[7]}" if !oct[7].nil?  
  	print "#{nov[7]}" if !nov[7].nil?
  	print "#{dec[7]}" + "\n" if !dec[7].nil? 
  	
  	# Playing with code here to clean up year print method. 

		# month_height = year_array[0].length
  # 	4.times do 
  # 		temp = []
  # 		3.times do 
  # 			temp << year_array[0]
  # 			year_array.shift 
  # 		end

  # 		month_height.times do 
  # 			temp.each do |temp|
  # 				print temp[0]
  # 				temp.shift 
  # 			end 
  # 			puts ""
  # 		end 
  # 		puts ""
  # 	end
  	
	end 





end