class Passenger

	attr_reader :checked_in

	def initialize
		touch_out_of_station
	end

	def touch_into_station
		@checked_in = true
	end

	def touch_out_of_station
		@checked_in = false
	end

	

end