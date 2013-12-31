require_relative 'month'
require 'pry'

class Year 

	DAYS = 'Su Mo Tu We Th Fr Sa'	
	MONTHS = %w{ January February March April May June July August September October November December }

	attr_accessor :year 

	def initialize month, year
		@year = year 
	end

	def year_head 
	head = "#{year}".center(62).rstrip 
	head << "\n\n"
	end 	




	def year_format 

	end


end 