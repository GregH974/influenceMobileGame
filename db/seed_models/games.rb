(1..20).each do |i|
  Game.create({
    name: "Game #{i}",
  })
end
puts "Games added"
