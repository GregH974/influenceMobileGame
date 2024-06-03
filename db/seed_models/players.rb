# Seed Player and Users
genders = Gender.all

10.times do |i|
  user = User.create!(
    email: "player#{i}@example.com",
    password: "password",
    password_confirmation: "password",
  )
  Player.find_or_create_by(user: user,first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..65), gender_id: genders.sample.id)
end
puts "Player and user added"
