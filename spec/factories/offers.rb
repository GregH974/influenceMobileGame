FactoryBot.define do
  factory :offer do
    title { Faker::Lorem.word }
    description { Faker::Marketing.buzzwords }
    score_to_achieve { 100 }
    min_age { 18 }
    max_age { 24 }
    gender { Player::GENDER.sample }
  end
end
