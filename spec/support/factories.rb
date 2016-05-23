FactoryGirl.define do

  factory :recipe do
    sequence(:name) {|n| "name #{n}" }
    sequence(:directions) {|n| ["#{n} direction"]}
  end

  factory :ingredient do
    sequence(:name) {|n| "#{n}garlic"}
  end

  factory :user do
    sequence(:username) {|n| "jones#{n}"}
    sequence(:email) {|n| "jones#{n}@email.com"}
    sequence(:password) { "password"}
  end

  factory :food_allergy do
    sequence(:name) { |n| "shrimp#{n}" }
  end

end
