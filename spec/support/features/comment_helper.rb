module Features
  def create_comment(username, body)
    visit root_path
    create_post 'Test', 'Lorem ipsum dolor sit amet.'
    fill_in 'comment[username]', with: username
    fill_in 'comment[body]', with: body
    click_on 'Leave comment'
  end
end
