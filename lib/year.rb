require_relative './month'
require 'pry' 

class Year

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

  def initialize month,year
    @month = month
    @year = year
  end

  def year_head 
  	yr_head = "#{@year}".center(64) + "\n"
  	puts yr_head 
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

  def week
  	week = "Su Mo Tu We Th Fr Sa"
  	row = week + "  " + week + "  " + week + "\n"
  end


  def print_year 

  	year = year_head
  	puts year

  	year_array = []
  	12.times do |this|
  		temp = Month.new(this + 1, @year)
  		year_array.push(temp.month_year_format)
  	end

  	jan = year_array[0]
  	space = 20 - jan[6].length 
  	jan[6] << (" " * space)
  	
  	feb = year_array[1]
  	space = 20 - feb[6].length 
  	feb[6] << (" " * space)
  	
  	mar = year_array[2]

  	apr = year_array[3]
  	space = 20 - apr[6].length 
  	apr[6] << (" " * space)

  	may = year_array[4]
  	space = 20 - may[6].length
  	may[6] << (" " * space)

  	jun = year_array[5]

  	jul = year_array[6]
  	space = 20 - jul[6].length 
  	jul[6] << (" " * space)

  	aug = year_array[7]
  	space = 20 - aug[6].length 
  	aug[6] << (" " * space)

  	sep = year_array[8]

  	oct = year_array[9]
  	space = 20 - oct[6].length  
  	oct[6] << (" " * space)

  	nov = year_array[10]
  	space = 20 - nov[6].length  
  	nov[6] << (" " * space)

  	dec = year_array[11]



  	puts "#{jan[0]}" + "         " +  "#{feb[0]}" + "        "  "#{mar[0]}"
  	puts "#{jan[1]}  #{feb[1]}  #{mar[1]}"
  	puts "#{jan[2]}  #{feb[2]}  #{mar[2]}"
  	puts "#{jan[3]}  #{feb[3]}  #{mar[3]}"
  	puts "#{jan[4]}  #{feb[4]}  #{mar[4]}"
  	puts "#{jan[5]}  #{feb[5]}  #{mar[5]}"
  	puts "#{jan[6]}  #{feb[6]}  #{mar[6]}"

  	puts 

  	puts "#{apr[0]}" + "       " + "#{may[0]}".center(20) + " " + "#{jun[0]}".center(20)
  	puts "#{apr[1]}  #{may[1]}  #{jun[1]}"
  	puts "#{apr[2]}  #{may[2]}  #{jun[2]}"
  	puts "#{apr[3]}  #{may[3]}  #{jun[3]}"
  	puts "#{apr[4]}  #{may[4]}  #{jun[4]}"
  	puts "#{apr[5]}  #{may[5]}  #{jun[5]}"
  	puts "#{apr[6]}  #{may[6]}  #{jun[6]}"

  	puts 

  	puts "#{jul[0]}" + "       " + "#{aug[0]}".center(20) + "  " + "#{sep[0]}".center(20)
  	puts "#{jul[1]}  #{aug[1]}  #{sep[1]}"
  	puts "#{jul[2]}  #{aug[2]}  #{sep[2]}"
  	puts "#{jul[3]}  #{aug[3]}  #{sep[3]}"
  	puts "#{jul[4]}  #{aug[4]}  #{sep[4]}"
  	puts "#{jul[5]}  #{aug[5]}  #{sep[5]}"
  	puts "#{jul[6]}  #{aug[6]}  #{sep[6]}"

  	puts 

  	puts "#{oct[0]}" + "      " + "#{nov[0]}".center(20) + " " + "#{dec[0]}".center(20)
  	puts "#{oct[1]}  #{nov[1]}  #{dec[1]}"
  	puts "#{oct[2]}  #{nov[2]}  #{dec[2]}"
  	puts "#{oct[3]}  #{nov[3]}  #{dec[3]}"
  	puts "#{oct[4]}  #{nov[4]}  #{dec[4]}"
  	puts "#{oct[5]}  #{nov[5]}  #{dec[5]}"
  	puts "#{oct[6]}  #{nov[6]}  #{dec[6]}"

  	



		# month_height = year_array[0].length
  # 	4.times do 
  # 		temp = []
  # 		3.times do 
  # 			temp << year_array[0]
  # 			year_array.shift 
  # 		end

 #  		month_height.times do 
 #  			temp.each do |temp|
 #  				print temp[0]
 #  				temp.shift 
 #  			end 
 #  			puts ""
 #  		end 
 #  		puts ""
 #  	end
  	
	end 





end