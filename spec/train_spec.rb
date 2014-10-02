require 'train'

describe Train do

	let(:station1) { double :station }
	let(:station2) { double :station }
	let(:coach) { double :coach }

	it "should be able to know how many coaches it has" do
		train = Train.new
		6.times{train.attach_coaches(coach)}
		expect(train.whole_train.count).to eq 6
	end

end