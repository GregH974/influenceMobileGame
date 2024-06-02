require 'faker'
FactoryBot.define do
  factory :player do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { 25 }
    gender { Player::GENDER.sample }
    association :user, factory: :user
  end
end