require 'rails_helper'

feature 'User creates post' do
  scenario 'successfully' do
    visit root_path

    create_post 'Test', 'Lorem ipsum dolor sit amet.'

    expect(page).to have_content 'Lorem ipsum dolor sit amet.'
  end

  it 'shows error messages if any fields have errors' do
    visit root_path

    create_post '', ''

    expect(page).to have_content 'Title is too short'
    expect(page).to have_content 'Body is too short'
  end
end
