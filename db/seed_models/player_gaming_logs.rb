players = Player.all.limit(4)
games = Game.all.limit(20)
log = {
  "name": "Game 123",
  "score": 100,
  "session": {
    "start_date": "2024-03-15 13:05:00",
    "end_date": "2024-03-15 13:10:00",
    "time_playing": 300
  }
}
points =  (100..400).step(100).to_a

players.each do |player|
  (1..7).each do |i|
    log[:score] = points.sample
    PlayerGamingLog.create(player: player, game: games.sample, log: log)
  end
end

puts "Player gaming logs added"
