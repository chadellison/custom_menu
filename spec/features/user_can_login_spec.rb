require 'rails_helper'

feature "User can login to account" do
  scenario "and see his dashboard" do
    user = create(:user)

    visit root_path

    click_link "Log In"

    expect(current_path).to eq login_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    within(".login") do
      click_on "Log In"
    end

    expect(page).to have_content("Logged in as #{user.username.capitalize}")

  end
end
