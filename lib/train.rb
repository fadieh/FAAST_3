class Train

	attr_reader :coaches
	attr_reader :at_station	
	attr_accessor :not_running

	def initialize
		@coaches = []
	end

	def whole_train
		@coaches
	end

	def attach_coaches(coach)
		@coaches << coach
	end

	def at_station
		@at_station
	end

	def enter_station
		@at_station = true
	end

	def leave_station
		@at_station = false
	end

	def take_out_of_service
		@not_running = true
	end

	def put_back_into_service
		@not_running = false
	end

end