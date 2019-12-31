require 'rails_helper'

feature 'User edits a blog post' do
  scenario 'successfully' do
    visit root_path

    create_post 'Test', 'Here is some test content'

    click_on 'Edit post'
    fill_in 'Body', with: 'This post has been edited'
    click_on 'Submit'

    expect(page).to have_content 'This post has been edited'
  end
end
