require 'passenger'

	describe Passenger do

	let(:station) { double :station }
	let(:coach) { double :coach }
	let(:passenger) { Passenger.new }

	it "should be initialised checked outside the station" do
		expect(passenger.checked_in).to be false
	end

	it "should be able to touch into the station" do
		passenger.touch_into_station
		expect(passenger.checked_in).to be true
	end

	it "should be able to touch out of the station" do
		passenger.touch_into_station
		expect(passenger.checked_in).to be true
		passenger.touch_out_of_station
		expect(passenger.checked_in).to be false
	end

	it "should be able to enter a coach once touched into the station" do
		
	end

end