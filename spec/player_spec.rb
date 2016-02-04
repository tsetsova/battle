require 'player'

describe Player do

	subject(:player){described_class.new(name: "Mug")}

	it "checks a person has a name" do
		expect(player.name).to eq "Mug"
	end
end