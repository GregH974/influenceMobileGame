FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    email { generate(:email) }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end
