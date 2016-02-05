require 'player'

describe Player do

	subject(:mug){described_class.new(name: "Mug")}
	subject(:monkey){described_class.new(name: "Monkey")}

	it "checks a person has a name" do
		expect(mug.name).to eq "Mug"
	end

	it "checks a person has hp" do
		expect(mug.health).to eq 100
	end

	it "reduces hp after an attack" do
		expect{mug.receive_damage(10)}.to change {mug.health}.by -10
	end
end