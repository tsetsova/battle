require 'game'

describe Game do

	let(:mug){double(:mug, receive_damage: 98)}
	let(:monkey){double(:monkey, receive_damage: 98)}
	subject(:game){described_class.new(player_1: mug, player_2: monkey)}

	it "damages player" do
		expect(mug).to receive(:receive_damage)
		game.attack(mug)
	end

	it "switches player's turn" do
		game.attack(monkey)
		expect(game.turn).to eq monkey
	end

end