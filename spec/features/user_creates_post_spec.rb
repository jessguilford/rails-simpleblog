require 'rails_helper'

feature 'User creates post' do
  scenario 'successfully' do
    visit root_path

    click_on 'Add post'
    fill_in 'Title', with: 'Test'
    fill_in 'Body', with: 'Lorem ipsum dolor sit amet.'
    click_on 'Submit'

    expect(page).to have_content('Lorem ipsum dolor sit amet.')
  end
end
