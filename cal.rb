require_relative 'lib/month'
require_relative 'lib/year'

if ARGV.size == 1
	month = 1
	year = ARGV[0].to_i
	cal = Year.new(month, year)
	puts cal.print_year 
else 
	month = ARGV[0].to_i
	year = ARGV[1].to_i	
	cal = Month.new(month, year)
	puts cal.month_format
end 






 
