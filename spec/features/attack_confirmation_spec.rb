require 'spec_helper'

feature 'Player attacks oponent' do
	scenario 'confirms attack' do
		sign_in_and_play
		click_button "Attack Monkey"
		expect(page).to have_content('You attacked Monkey')
		expect(page).to have_content('Monkey\'s health is down 2 points')
	end
end

