require 'rails_helper'

feature 'user visits single post page' do
  scenario 'successfully' do
    visit root_path
    create_post 'This is a Test', 'Lorem ipsum consectetur magnus'
    visit root_path
    create_post 'Test Post 2', 'testing testing 248549857'

    visit root_path

    click_on 'Test Post 2'

    expect(page).to have_content 'testing testing 248549857'
    expect(page).not_to display_multiple_posts
  end
end
