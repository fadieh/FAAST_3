class Station

	def initialize
		@platform = []
	end

	def platform
		@platform
	end

	def train_dock(train)
		@platform << train
	end

end