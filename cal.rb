require_relative 'lib/month'

month = ARGV[0].to_i
year = ARGV[1].to_i

cal = Month.new(month, year)
puts cal.month_format 
