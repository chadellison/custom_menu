require 'rails_helper'

RSpec.describe FoodAllergy, type: :model do
  context "validates name" do
    it { is_expected.to validate_presence_of(:name) }
  end

  context "belongs association" do
    it { is_expected.to belong_to(:user) }
  end

end
