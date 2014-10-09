require 'station'

describe Station do

	let(:train) { double :train }
	let(:passenger) { double :passenger }
	let(:station) { Station.new }

	it "should be able to hold trains" do
		expect(station.platform.count).to eq 0
		station.train_dock(train)
		expect(station.platform.count).to eq 1
	end

	it "allow trains to leave the platform" do
		station.train_dock(train)
		expect(station.platform.count).to eq 1
		station.train_depart(train)
		expect(station.platform.count).to eq 0
	end

	it "should accept passengers" do
		allow(passenger).to receive(:touch_into_station)
		station.accept_passenger(passenger)
		expect(station.passengers.count).to eq 1
	end

	it 'should check in the passenger' do
		expect(passenger).to receive(:touch_into_station)

		station.accept_passenger(passenger)
	end

	it "should release passengers" do
		allow(passenger).to receive(:touch_into_station)
		station.accept_passenger(passenger)
		expect(station.passengers.count).to eq 1
		station.release_passenger(passenger)
		expect(station.passengers.count).to eq 0
	end

end