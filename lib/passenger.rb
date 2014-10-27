class Passenger

	attr_reader :checked_in
	attr_accessor :balance
	attr_reader :name
	attr_reader :address
	attr_reader :missing_card

	def initialize
		touch_out_of_station
		@balance = 0
	end

	def touch_into_station
		@checked_in = true
		@balance = @balance - 1
	end

	def touch_out_of_station
		@checked_in = false
	end

	def top_up(balance)
		@balance = @balance + balance
	end

	def register_name(name)
		@name = name
	end

	def register_address(address)
		@address = address
	end

	def report_missing
		@missing_card = true
	end

end