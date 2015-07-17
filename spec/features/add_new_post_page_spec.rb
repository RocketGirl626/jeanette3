require "rails_helper"

describe "Add Post" do
  it "allows a user to add a post to the site", js: true do
    user = FactoryGirl.create(:user)
    visit "/"
    expect(page).to have_content("Login")
    click_link "Login"
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_on 'Log in'
    expect(page).to have_content("Signed in successfully.")
    click_on "Jeanette's Blog"
    click_on "Add a New Post"
    fill_in 'Name', :with => 'hello world'
    fill_in 'Text', :with => 'hi back at ya'
    click_on 'Create Post'
    expect(page).to have_content("hello world")
  end
end
