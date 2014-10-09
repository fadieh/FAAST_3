require 'train'

describe Train do

	let(:station1) { double :station }
	let(:station2) { double :station }
	let(:coach) { double :coach }

	it "should initialise with 6 coaches" do
		train = Train.new
		6.times{train.attach_coaches(coach)}
		expect(train.whole_train.count).to eq 6
	end

	it "should be able to hold any number of coaches" do
		train = Train.new
		expect(train.whole_train.count).to eq 0
		train.attach_coaches(coach)
		expect(train.whole_train.count).to eq 1
	end

	it "should initialise outside the station" do
		train = Train.new
		train.leave_station
		expect(train.at_station).to be false
	end

	it "should be able to enter a station" do
		train = Train.new
		train.enter_station
		expect(train.at_station). to be true
	end

	it "should travel from station to station" do
		train = Train.new
		train.enter_station
	end

end