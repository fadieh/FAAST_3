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

	def train_depart(train)
		@platform.delete(train)
	end

end