require 'station'

describe Station do

	let(:train) { double :train }
	let(:passenger) { double :passenger }

	it "should be able to hold trains" do
		station = Station.new
		expect(station.platform.count).to eq 0
		station.train_dock(train)
		expect(station.platform.count).to eq 1
	end

	it "allow trains to leave the platform" do
		station = Station.new
		station.train_dock(train)
		expect(station.platform.count).to eq 1
		station.train_depart(train)
		expect(station.platform.count).to eq 0
	end

	it "should accept passengers" do
		station = Station.new
		station.accept_passenger(passenger)
		expect(station.passengers.count).to eq 1
	end

	it "should release passengers" do
		station = Station.new
		station.accept_passenger(passenger)
		expect(station.passengers.count).to eq 1
		station.release_passenger(passenger)
		expect(station.passengers.count).to eq 0
	end

	it "should know when it's sunday" do
		station = Station.new
		station.sunday
		expect(station.is_sunday?).to be true
	end



end