require 'rails_helper'

feature "User can logout" do
  scenario "successfully" do
    user = create(:user)

    sign_in(user)

    expect(page).to have_content("Logged in as #{user.username.capitalize}")

    click_on "Log Out"

    expect(page).to have_content("You've successfully logged out! ")

  end
end
