[
  { name: "Woman", slug: "woman" },
  { name: "Man", slug: "man" },
  { name: "Transgender", slug: "transgender" },
  { name: "Non-binary", slug: "non-binary" },
  { name: "Prefer not to respond", slug: "prefer-not-to-respond" },
].each do |gender_data|
  gender = Gender.new(gender_data)
  gender.save!
end
puts "Genders added"
