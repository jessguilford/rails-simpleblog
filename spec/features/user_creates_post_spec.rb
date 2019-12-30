require 'rails_helper'

feature 'User creates post' do
  scenario 'successfully' do
    visit root_path

    create_post 'Test', 'Lorem ipsum dolor sit amet.'

    expect(page).to have_content 'Lorem ipsum dolor sit amet.'
  end
end
