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
		passenger.touch_into_station
	end

	it "should initialise with a balance" do
		expect(passenger.balance).to eq(0)
	end

	it "should be able to top up balance" do
		passenger.top_up(1)
		expect(passenger.balance).to eq(1)
	end

	it "should register their details for balance" do
		passenger.register_name('fadie')
		passenger.register_address('high street')	
		expect(passenger.name).to eq('fadie')
		expect(passenger.address).to eq('high street')
	end

	it "should report oyster card missing" do
		passenger.report_missing
		expect(passenger.missing_card).to eq(true)
	end

end