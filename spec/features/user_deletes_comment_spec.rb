require 'rails_helper'

feature 'User deletes comment' do
  scenario 'successfully' do
    visit root_path
    create_comment 'Jane Doe', 'This is a test'
    click_on 'Delete comment'
    expect(page).not_to have_content 'This is a test'
  end
end
