module Features
  def create_post(title, body)
    click_on 'Add post'
    fill_in 'Title', with: title
    fill_in 'Body', with: body
    click_on 'Submit'
  end

  def display_multiple_posts
    have_selector '.post__title', minimum: 2
  end
end
