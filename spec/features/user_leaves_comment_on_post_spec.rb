require 'rails_helper'

feature 'user leaves comment on blog' do
  scenario 'successfully' do
    visit root_path
    create_post 'Test', 'Lorem ipsum dolor sit amet.'
    fill_in 'comment[username]', with: 'foo@testing.com'
    fill_in 'comment[body]', with: 'This is a comment on a blog post'
    click_on 'Leave comment'
    expect(page).to have_content 'This is a comment on a blog post'
  end
end
