require 'rails_helper'

RSpec.describe User, type: :model do
  context "attribute validations" do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_uniqueness_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to have_secure_password }
    it { is_expected.to validate_length_of(:password) }
  end

  context "association" do
    it { is_expected.to have_many(:food_allergies) }
  end
end
