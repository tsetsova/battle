require 'game'

describe Game do

	let(:mug){double (:mug)}
	let(:monkey){double (:monkey)}

	it "damages player" do
		expect(mug).to receive(:receive_damage)
		subject.attack(mug)
	end

end