require_relative './month'

class Year

	MONTH_NAMES = %w{ January February March April May June July August September October November December } 

  attr_reader :year   

  def initialize month, year
    @year = year
  end

  def year_head # Create header for year entered by user.
  	year_head = "#{@year}".center(63).rstrip + "\n"
  	puts year_head 
  end

  def print_year # NOT final. Need to refactor to do this programatically. 

    year = @year

  	# Push properly formatted month arrays into an array of the year submitted by the user. 
  	year_array = []
  	12.times do |this|
  		temp = Month.new(this + 1, @year)
  		year_array.push(temp.month_year_format)
  	end

    # Set variable for each month in year_array / format spacing for last 2 rows 
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


    # Print year header
    puts year_head

    # Print January-March
  	"#{'January'.center(20)}  #{'February'.center(20)}  #{' ' * 7 + 'March'}" + "\n" +
  	"#{jan[1]}  #{feb[1]}  #{mar[1]}" + "\n" +
  	"#{jan[2]}  #{feb[2]}  #{mar[2]}" + "\n" +
  	"#{jan[3]}  #{feb[3]}  #{mar[3]}" + "\n" +
  	"#{jan[4]}  #{feb[4]}  #{mar[4]}" + "\n" +
  	"#{jan[5]}  #{feb[5]}  #{mar[5]}" + "\n" +
  	"#{jan[6]}  #{feb[6]}  #{mar[6]}" + "\n" +
    "#{jan[7] || '                    '}  #{feb[7] || '                    '}  #{mar[7]}" + "\n" +

    # Print April-June
  	"#{'April'.center(20)}  #{'May'.center(20)}  #{' ' * 8 + 'June'}" + "\n" +
  	"#{apr[1]}  #{may[1]}  #{jun[1]}" + "\n" +
  	"#{apr[2]}  #{may[2]}  #{jun[2]}" + "\n" +
  	"#{apr[3]}  #{may[3]}  #{jun[3]}" + "\n" +
  	"#{apr[4]}  #{may[4]}  #{jun[4]}" + "\n" +
  	"#{apr[5]}  #{may[5]}  #{jun[5]}" + "\n" +
  	"#{apr[6]}  #{may[6]}  #{jun[6]}" + "\n" +
    "#{apr[7] || '                    '}  #{may[7] || '                    '}  #{jun[7]}" + "\n" +

    # Print July-September
  	"#{'July'.center(20)}  #{'August'.center(20)}  #{' ' * 5 + 'September'}" + "\n" +
  	"#{jul[1]}  #{aug[1]}  #{sep[1]}" + "\n" +
  	"#{jul[2]}  #{aug[2]}  #{sep[2]}" + "\n" +
  	"#{jul[3]}  #{aug[3]}  #{sep[3]}" + "\n" +
  	"#{jul[4]}  #{aug[4]}  #{sep[4]}" + "\n" +
  	"#{jul[5]}  #{aug[5]}  #{sep[5]}" + "\n" +
  	"#{jul[6]}  #{aug[6]}  #{sep[6]}" + "\n" +
  	"#{jul[7] || '                    '}  #{aug[7] || '                    '}  #{sep[7]}" + "\n" +

    #Print October-December  
  	"#{'October'.center(20)}  #{'November'.center(20)}  #{' ' * 6 + 'December'}" + "\n" +
  	"#{oct[1]}  #{oct[1]}  #{oct[1]}" + "\n" + 
  	"#{oct[2]}  #{nov[2]}  #{dec[2]}" + "\n" +
  	"#{oct[3]}  #{nov[3]}  #{dec[3]}" + "\n" +
  	"#{oct[4]}  #{nov[4]}  #{dec[4]}" + "\n" +
  	"#{oct[5]}  #{nov[5]}  #{dec[5]}" + "\n" +
  	"#{oct[6]}  #{nov[6]}  #{dec[6]}" + "\n" +
  	"#{oct[7] || '                    '}  #{nov[7] || '                    '}  #{dec[7]}" + "\n"
	end 
end