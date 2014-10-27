class Station

	attr_reader :name
	attr_reader :line

	def initialize
		@platform = []
		@passengers = []
		@name = []
	end

	def platform
		@platform
	end

	def passengers
		@passengers
	end

	def train_dock(train)
		@platform << train
	end

	def train_depart(train)
		@platform.delete(train)
	end

	def accept_passenger(passenger)
		passenger.touch_into_station
		@passengers << passenger
	end

	def release_passenger(passenger)
		passenger.touch_out_of_station
		@passengers.delete(passenger)
	end

	def set_name(station)
		@name = station
	end

	def set_line(line)
		@line = line
	end
	
end