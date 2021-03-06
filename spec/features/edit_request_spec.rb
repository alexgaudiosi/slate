require 'spec_helper'

describe 'editing requests' do
	it 'edits the request' do
		sign_in_as_student_alex
		create_request

		visit '/requests'
		click_link 'Edit'

		fill_in 'Description', with: 'Migration issue'
		fill_in 'Category', with: 'Postgresql'
		click_button 'Edit'

		expect(current_path).to eq '/requests'
		expect(page).to have_content 'Migration issue'
		expect(page).to have_content 'Postgresql'
	end
end