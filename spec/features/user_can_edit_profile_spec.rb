require 'rails_helper'

feature "User can edit  profile page" do
  scenario "successfully" do
    user = create(:user)
    food_allergy1, food_allergy2 = create_list(:food_allergy, 2)
    user.food_allergies = [food_allergy1, food_allergy2]

    sign_in(user)

    expect(page).to have_content("Logged in as #{user.username.capitalize}")

    click_on "Profile"

    expect(page).to have_content("#{user.username.capitalize}'s Dashboard")
    expect(page).to have_content("#{user.email}")
    expect(page).to have_content("#{user.food_allergies.first.name}")
    expect(page).to have_content("#{user.food_allergies.last.name}")

    click_on "Edit Profile"

    expect(current_path).to eq(edit_dashboard_path(user.id))

    within("h2") do
      expect(page).to have_content("Update Your Profile")
    end

    fill_in "Username", with: "Bridget"
    fill_in "Email", with: "bridget@jones.com"
    fill_in "Password", with: "ilovedarcy"

    click_on "Update Profile"

    expect(current_path).to eq(dashboard_path(user.id))

    expect(page).to have_content("Bridget's Dashboard")
    expect(page).to have_content("bridget@jones.com")
    expect(page).to have_content("#{user.food_allergies.last.name}")

    ####NEED TO ADD HOW AND WHERE USER CAN ADD/UPDATE ALLERGIES
  end
end
