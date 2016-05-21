require "rails_helper"

describe Recipe do
  context "Recipe has many ingredients" do
    it {is_expected.to have_many :ingredients}
  end
end
