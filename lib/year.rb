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
  		year_array.push(temp.month_format)
  	end

    # Set variable for each month in year_array / format spacing for last 2 rows

    year_array.each.with_index(1) do |month, i|
      if i % 3 > 0
        if month[6].nil?
          month[6] = " " * 20
        else
          month[6] << (" " * (20 - month[6].length))
        end
        month[7] << (" " * (20 - month[7].length)) unless month[7].nil?
      end
    end

  	jan = year_array[0]
  	feb = year_array[1]
  	mar = year_array[2]
  	apr = year_array[3]
  	may = year_array[4]
  	jun = year_array[5]
  	jul = year_array[6]
  	aug = year_array[7]
  	sep = year_array[8]
  	oct = year_array[9]
  	nov = year_array[10]
  	dec = year_array[11]


    # Print year header
    puts year_head

    # Print January-March
  	"#{'January'.center(20)}  #{'February'.center(20)}  #{' ' * 7 + 'March'}" + "\n" +
  	"#{jan[1]}  #{feb[1]}  #{mar[1]}" + "\n" + "#{jan[2]}  #{feb[2]}  #{mar[2]}" + "\n" +
  	"#{jan[3]}  #{feb[3]}  #{mar[3]}" + "\n" + "#{jan[4]}  #{feb[4]}  #{mar[4]}" + "\n" +
  	"#{jan[5]}  #{feb[5]}  #{mar[5]}" + "\n" + "#{jan[6]}  #{feb[6]}  #{mar[6]}" + "\n" +
    "#{jan[7] or '                    '}  #{feb[7] or '                    '}  #{mar[7]}" + "\n" +

    # Print April-June
  	"#{'April'.center(20)}  #{'May'.center(20)}  #{' ' * 8 + 'June'}" + "\n" +
  	"#{apr[1]}  #{may[1]}  #{jun[1]}" + "\n" + "#{apr[2]}  #{may[2]}  #{jun[2]}" + "\n" +
  	"#{apr[3]}  #{may[3]}  #{jun[3]}" + "\n" + "#{apr[4]}  #{may[4]}  #{jun[4]}" + "\n" +
  	"#{apr[5]}  #{may[5]}  #{jun[5]}" + "\n" + "#{apr[6]}  #{may[6]}  #{jun[6]}" + "\n" +
    "#{apr[7] or '                    '}  #{may[7] or '                    '}  #{jun[7]}" + "\n" +

    # Print July-September
  	"#{'July'.center(20)}  #{'August'.center(20)}  #{' ' * 5 + 'September'}" + "\n" +
  	"#{jul[1]}  #{aug[1]}  #{sep[1]}" + "\n" + "#{jul[2]}  #{aug[2]}  #{sep[2]}" + "\n" +
  	"#{jul[3]}  #{aug[3]}  #{sep[3]}" + "\n" + "#{jul[4]}  #{aug[4]}  #{sep[4]}" + "\n" +
  	"#{jul[5]}  #{aug[5]}  #{sep[5]}" + "\n" + "#{jul[6]}  #{aug[6]}  #{sep[6]}" + "\n" +
  	"#{jul[7] or '                    '}  #{aug[7] or '                    '}  #{sep[7]}" + "\n" +

    #Print October-December
  	"#{'October'.center(20)}  #{'November'.center(20)}  #{' ' * 6 + 'December'}" + "\n" +
  	"#{oct[1]}  #{oct[1]}  #{oct[1]}" + "\n" + "#{oct[2]}  #{nov[2]}  #{dec[2]}" + "\n" +
  	"#{oct[3]}  #{nov[3]}  #{dec[3]}" + "\n" + "#{oct[4]}  #{nov[4]}  #{dec[4]}" + "\n" +
  	"#{oct[5]}  #{nov[5]}  #{dec[5]}" + "\n" + "#{oct[6]}  #{nov[6]}  #{dec[6]}" + "\n" +
  	"#{oct[7] or '                    '}  #{nov[7] or '                    '}  #{dec[7]}" + "\n"
	end
end