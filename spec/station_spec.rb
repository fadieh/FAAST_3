require 'station'

describe Station do

	let(:train) { double :train }

	it "should be able to hold trains" do
		station = Station.new
		expect(station.platform.count).to eq 0
		station.train_dock(train)
		expect(station.platform.count).to eq 1
	end

end