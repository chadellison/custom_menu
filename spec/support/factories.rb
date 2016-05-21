FactoryGirl.define do

  factory :recipe do
    sequence(:name) {|n| "name #{n}" }
    sequence(:directions) {|n| ["#{n} direction"]}
  end

  factory :ingredient do
    sequence(:name) {|n| "#{n}garlic"}
  end
end
