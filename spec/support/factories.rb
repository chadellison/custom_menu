FactoryGirl.define do

  factory :recipe do
    sequence(:name) {|n| "name #{n}" }
  end
end
