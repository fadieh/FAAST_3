class Train

	attr_reader :coaches

	def initialize
		@coaches = []
	end

	def whole_train
		@coaches
	end

	def attach_coaches(coach)
		@coaches << coach
	end

end