# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Empty base seeds and reseed
mandatory_content = [
  :offers,
]
connection = ActiveRecord::Base.connection

puts "Resetting mandatory content"
mandatory_content.each do |table|
  connection.execute("DELETE FROM #{table}")
  connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH 1")
end

puts "Offers"
group_age = Offer::GROUP_AGE
genders = Player::GENDER << 'all'

genders.each do |gender|
  group_age.each do |age|
  50.times { |i|
    Offer.create({
      title: Faker::Lorem.word,
      description: Faker::Marketing.buzzwords,
      score_to_achieve: (i+1) * 100,
      min_age: age.first,
      max_age: age.last,
      gender: gender
    })
  }
  end
end
