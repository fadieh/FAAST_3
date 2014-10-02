class Station

	def initialize
		@platform = []
		@passengers = []
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
		@passengers << passenger
	end

	def release_passenger(passenger)
		@passengers.delete(passenger)
	end

	def time
		time = Time.new
	end

	def sunday
		@time
	end

	def is_sunday?
		time.thursday?
	end

	def close_on_sunday
		self.freeze
	end




end