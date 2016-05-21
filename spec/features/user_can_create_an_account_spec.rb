require "rails_helper"

feature "User can create an account" do
  scenario "user sees dashboard" do
    visit root_path

    click_on "Create Account"

    fill_in "Username", with: "Jones"
    fill_in "Email", with: "jones@gmaile.com"
    fill_in "Password", with: "123"

    fill_in "Password confirmation", with: "123"
    click_on "Create Account"

    expect(page).to have_content "Your account has been created"
    expect(current_path).to eq dashboard_path(User.last.id)
    expect(page).to have_content "Logged in as Jones"
  end
end
