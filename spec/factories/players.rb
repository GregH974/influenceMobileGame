FactoryBot.define do
  factory :player do
    first_name { "MyString" }
    last_name { "MyString" }
    age { 1 }
    gender { "MyString" }
    user { nil }
  end
end
