require 'spec_helper'

feature "adding new players" do
	scenario "storing new players in a global variable" do
		sign_in_and_play
		expect($game.player_1.name).to eq "Mug"
	end
end