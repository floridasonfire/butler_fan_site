require 'rails_helper'

describe "the add post process" do
  it "adds a new post" do
    visit root_path
    click_on "Forum"
    click_on "Add Post"
    fill_in "Title", :with => "Post Title"
    fill_in "Content", :with => "Post Content"
    fill_in "Author", :with => "Me"
    click_on "Create Post"
    expect(page).to have_content 'Post Content'
  end

  it "gives error when no title, content, or url is entered" do
    visit new_post_path
    click_on "Create Post"
    expect(page).to have_content 'errors'
  end
end
