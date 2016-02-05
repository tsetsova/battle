require 'spec_helper'

feature 'Switches turn' do
	scenario 'displays player\'s turn' do
		sign_in_and_play
		click_button "Attack Monkey"
		expect(page).to have_content("Now it's Monkey's turn to attack!")
		click_button "Attack Mug"
		expect(page).to have_content("Now it's Mug's turn to attack!")
	end
end
