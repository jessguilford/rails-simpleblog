require 'rails_helper'

describe Post do
  it 'validates presence' do
    post = Post.new(title: '', body: '')
    expect(post.valid?).to eq false
  end
end
