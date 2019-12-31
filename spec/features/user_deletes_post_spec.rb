require 'rails_helper'

feature 'user deletes post' do
  scenario 'successfully' do
    visit root_path
    create_post 'Test', 'Here is some test content 9827458'
    click_on 'Delete post'
    expect(page).not_to have_content 'Here is some test content 9827458'
  end
end
