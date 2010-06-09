
class Date

REFERENCE_SUNDAY = Date.new(6,1900)
	
	def initialize(day, year)
		@day = day
		@year = year
	end

	
	def is_sunday?
		current = self
		while(current > REFERENCE_SUNDAY)
			current -= 7
		end

		current == REFERENCE_SUNDAY
	end

	def is_leap_year?
		year % 4 == 0
	end

	def > (other_date)
		return @year > year if @year != year
		return @month > month if @month != month
		return @day > day if @day != day
		false
	end

	def - (days)
		if(@days > days)
			return Date.new(@days-days, year)
		
	end
end

