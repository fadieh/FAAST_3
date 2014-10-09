require 'passenger'

	describe Passenger do

	let(:station) { double :station }
	let(:coach) { double :coach }

	it "should be initialised checked outside the station" do
		passenger = Passenger.new
		expect(passenger.checked_in).to be false
	end

	it "should be able to touch into the station" do
		passenger = Passenger.new
		passenger.touch_into_station
		expect(passenger.checked_in).to be true
	end

	it "should be able to touch out of the station" do
		passenger = Passenger.new
		passenger.touch_into_station
		expect(passenger.checked_in).to be true
		passenger.touch_out_of_station
		expect(passenger.checked_in).to be false
	end

	it "should be able to enter a coach once touched into the station" do
		passenger = Passenger.new
		
	end

end