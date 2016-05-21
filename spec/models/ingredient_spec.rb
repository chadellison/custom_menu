require "rails_helper"

describe Ingredient do
  context "belongs to recipe" do
    it {is_expected.to belong_to :recipe}
  end
end
