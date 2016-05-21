require 'rails_helper'

feature 'User can see all recipes' do
  scenario 'successfully' do
    recipe1, recipe2, recipe3 = create_list(:recipe, 3)

    visit recipes_path

    expect(page).to have_content("All Recipes")
    expect(page).to have_content(recipe1.name)
    expect(page).to have_content(recipe2.name)
    expect(page).to have_content(recipe3.name)
  end
end
