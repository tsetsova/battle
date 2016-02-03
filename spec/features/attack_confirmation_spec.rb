require 'spec_helper'

feature 'Player adds their name' do
	scenario 'with valid name' do
		sign_in_and_play
		click_button "Attack Monkey"
		expect(page).to have_content('You attacked Monkey')
	end
end
