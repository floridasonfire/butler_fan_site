require 'rails_helper'

describe "the add image process" do
  it "adds a new image" do
    Bio.create({:name => "Tuxedo Man", :url => "Whatever.jpg", :content => "He's great."})
    visit root_path
    click_on "Images"
    click_on "Add Image"
    fill_in "Url", :with => "this doesn't matter"
    fill_in "Caption", :with => "this totally matters"
    click_on "Create Image"
    expect(page).to have_content 'this totally matters'
  end

  it "gives error when no url is entered" do
    visit new_image_path
    click_on "Create Image"
    expect(page).to have_content 'errors'
  end
end
