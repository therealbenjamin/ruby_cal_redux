require_relative './month'

class Year

	MONTH_NAMES = %w{ January February March April May June July August September October November December }

  attr_reader :year

  def initialize month, year
    @year = year
  end

  def year_head
  	year_head = "#{@year}".center(63).rstrip + "\n"
  	puts year_head
  end

  def print_year

    year = @year

  	year_array = []
  	12.times do |this|
  		temp = Month.new(this + 1, @year)
  		year_array.push(temp.month_format)
  	end

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

    puts year_head

    # Print January-March
  	"#{'January'.center(20)}  #{'February'.center(20)}  #{' ' * 7 + 'March'}" + "\n" +
  	"#{year_array[0][1]}  #{year_array[1][1]}  #{year_array[2][1]}" + "\n" + "#{year_array[0][2]}  #{year_array[1][2]}  #{year_array[2][2]}" + "\n" +
  	"#{year_array[0][3]}  #{year_array[1][3]}  #{year_array[2][3]}" + "\n" + "#{year_array[0][4]}  #{year_array[1][4]}  #{year_array[2][4]}" + "\n" +
  	"#{year_array[0][5]}  #{year_array[1][5]}  #{year_array[2][5]}" + "\n" + "#{year_array[0][6]}  #{year_array[1][6]}  #{year_array[2][6]}" + "\n" +
    "#{year_array[0][7] || '                    '}  #{year_array[1][7] || '                    '}  #{year_array[2][7]}" + "\n" +

    # Print April-June
  	"#{'April'.center(20)}  #{'May'.center(20)}  #{' ' * 8 + 'June'}" + "\n" +
  	"#{year_array[3][1]}  #{year_array[4][1]}  #{year_array[5][1]}" + "\n" + "#{year_array[3][2]}  #{year_array[4][2]}  #{year_array[5][2]}" + "\n" +
  	"#{year_array[3][3]}  #{year_array[4][3]}  #{year_array[5][3]}" + "\n" + "#{year_array[3][4]}  #{year_array[4][4]}  #{year_array[5][4]}" + "\n" +
  	"#{year_array[3][5]}  #{year_array[4][5]}  #{year_array[5][5]}" + "\n" + "#{year_array[3][6]}  #{year_array[4][6]}  #{year_array[5][6]}" + "\n" +
    "#{year_array[3][7] || '                    '}  #{year_array[4][7] || '                    '}  #{year_array[5][7]}" + "\n" +

    # Print July-September
  	"#{'July'.center(20)}  #{'August'.center(20)}  #{' ' * 5 + 'September'}" + "\n" +
  	"#{year_array[6][1]}  #{year_array[7][1]}  #{year_array[8][1]}" + "\n" + "#{year_array[6][2]}  #{year_array[7][2]}  #{year_array[8][2]}" + "\n" +
  	"#{year_array[6][3]}  #{year_array[7][3]}  #{year_array[8][3]}" + "\n" + "#{year_array[6][4]}  #{year_array[7][4]}  #{year_array[8][4]}" + "\n" +
  	"#{year_array[6][5]}  #{year_array[7][5]}  #{year_array[8][5]}" + "\n" + "#{year_array[6][6]}  #{year_array[7][6]}  #{year_array[8][6]}" + "\n" +
  	"#{year_array[6][7] || '                    '}  #{year_array[7][7] || '                    '}  #{year_array[8][7]}" + "\n" +

    #Print October-December
  	"#{'October'.center(20)}  #{'November'.center(20)}  #{' ' * 6 + 'December'}" + "\n" +
  	"#{year_array[9][1]}  #{year_array[10][1]}  #{year_array[11][1]}" + "\n" + "#{year_array[9][2]}  #{year_array[10][2]}  #{year_array[11][2]}" + "\n" +
  	"#{year_array[9][3]}  #{year_array[10][3]}  #{year_array[11][3]}" + "\n" + "#{year_array[9][4]}  #{year_array[10][4]}  #{year_array[11][4]}" + "\n" +
  	"#{year_array[9][5]}  #{year_array[10][5]}  #{year_array[11][5]}" + "\n" + "#{year_array[9][6]}  #{year_array[10][6]}  #{year_array[11][6]}" + "\n" +
  	"#{year_array[9][7] || '                    '}  #{year_array[10][7] || '                    '}  #{year_array[11][7]}" + "\n"
	end
end