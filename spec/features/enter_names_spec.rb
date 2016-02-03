require 'spec_helper'

feature 'Player adds their name' do
	scenario 'with valid name' do
		visit('/')
		fill_in 'name_one', with: 'Ina'
		fill_in 'name_two', with: 'Johnny'
		click_button 'Submit'
		expect(page).to have_content('Ina vs. Johnny')
	end
end
