require 'spec_helper'

feature 'Player adds their name' do
	scenario 'with valid name' do
		visit('/')
		fill_in 'name_one', with: 'Mittens'
		fill_in 'name_two', with: 'Mug'
		click_button 'Submit'
		expect(page).to have_content('Mug\'s health: 20hp')
	end
end
