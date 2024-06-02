50.times { |i|
  Offer.create({
    title: Faker::Lorem.word,
    description: Faker::Marketing.buzzwords,
    score_to_achieve: (i+1) * 100,
  })
}

group_age = Offer.all
genders = Gender.all

# genders.each do |gender|
#   group_age.each do |age|

#   end
# end

puts "Offers added"
