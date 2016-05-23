require 'rails_helper'

feature "User can sign in and see profile page" do
  scenario "and see a list of the users allergies" do
    user = create(:user)
    food_allergy1 = FoodAllergy.create!(name: "shrimp")
    food_allergy2 = FoodAllergy.create!(name: "kimchi")
    user.food_allergies = [food_allergy1, food_allergy2]

    sign_in(user)

    expect(page).to have_content("Logged in as #{user.username.capitalize}")

    click_on "Profile"

    expect(page).to have_content("#{user.username.capitalize}'s Dashboard")
    expect(page).to have_content("#{user.email}")
    expect(page).to have_content("#{user.food_allergies.first.name}")
    expect(page).to have_content("#{user.food_allergies.last.name}")
  end
end
