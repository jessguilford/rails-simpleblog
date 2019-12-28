require 'rails_helper'

feature 'User visits about page' do
  scenario 'successfully' do
    visit '/about'

    expect(page).to have_content('About Us')
  end
end
