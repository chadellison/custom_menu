require "rails_helper"

feature "User sees one recipe" do
  scenario "user sees it" do
    recipe1, recipe2 = create_list(:recipe, 2)
    ingredient, ingredient2 = create_list(:ingredient, 2)
    recipe1.ingredients = [ingredient, ingredient2]

    visit recipes_path

    click_on recipe1.name
    expect(current_path).to eq recipe_path(recipe1.id)
    expect(page).to have_content recipe1.name
    expect(page).to have_content recipe1.ingredients.map { |ingredient| ingredient.name }.join(" ")

    expect(page).to have_content recipe1.directions.join
  end
end
