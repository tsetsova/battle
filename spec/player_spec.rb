require 'player'

describe Player do

	subject(:player){described_class.new(name: "Mug")}

	it "checks a person has a name" do
		expect(player.name).to eq "Mug"
	end

	it "checks a person has hp" do
		expect(player.health).to eq 100
	end

	it "reduces hp after an attack" do
		expect{player.receive_damage(10)}.to change {player.health}.by -10
	end
end