require 'station'

describe Station do

	let(:train) { double :train }
	let(:passenger) { double :passenger }
	let(:station) { Station.new }

	it "has a name" do
		station.set_name('old street')
		expect(station.name).to eq('old street')
	end

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
		expect(station.passengers.count).to eq 1
	end

	it "should release passengers" do
		allow(passenger).to receive(:touch_out_of_station)
		station.release_passenger(passenger)
		expect(station.passengers.count).to eq 0
	end

	it "should check out the passenger" do
		expect(passenger).to receive(:touch_out_of_station)
		station.release_passenger(passenger)
		expect(station.passengers.count).to eq 0
	end

end