require 'coach'

describe Coach do

	let(:passenger) { double :passenger }

	it "should have a capacity of 40" do
		coach = Coach.new
		expect(coach.capacity).to eq 40
	end

	it "should initialize with an empty passengers array" do
		coach = Coach.new
		expect(coach.passengers).to eq []
	end

	it "should board a passenger" do
		coach = Coach.new
		coach.board(passenger)
		expect(coach.passengers.count).to eq 1
	end

	it "should alight a passenger" do
		coach = Coach.new
		coach.board(passenger)
		expect(coach.passengers.count).to eq 1
		coach.alight(passenger)
		expect(coach.passengers.count).to eq 0
	end

	it "should know when it's full" do
		coach = Coach.new
		40.times{coach.board(passenger)}
		expect(coach.full?).to be true
	end

	it "should reject a passenger if full" do
		coach = Coach.new
		40.times{coach.board(passenger)}
		expect{coach.board(passengers).to raise_error(RuntimeError)}
	end

end