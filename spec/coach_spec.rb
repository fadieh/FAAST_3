require 'coach'

describe Coach do

	let(:passenger) { double :passenger }
	let(:coach) { Coach.new }

	it "should have a capacity of 40" do
		expect(coach.capacity).to eq 40
	end

	it "should initialize with an empty passengers array" do
		expect(coach.passengers).to eq []
	end

	it "should board a passenger" do
		coach.board(passenger)
		expect(coach.passengers.count).to eq 1
	end

	it "should alight a passenger" do
		coach.board(passenger)
		expect(coach.passengers.count).to eq 1
		coach.alight(passenger)
		expect(coach.passengers.count).to eq 0
	end

	it "should know when it's full" do
		40.times{coach.board(passenger)}
		expect(coach.full?).to be true
	end

end