def sign_in_and_play
	visit('/')
	fill_in 'name_one', with: 'Mug'
	fill_in 'name_two', with: 'Monkey'
	click_button 'Submit'
end