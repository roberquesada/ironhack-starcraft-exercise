# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

player1 = Player.create(name: 'Robert')
player2 = Player.create(name: 'Ruben')
player3 = Player.create(name: 'Rafa')
player4 = Player.create(name: 'Lluis')

Match.create(winner_faction: 'Terrans', loser_faction: 'Zerg', duration: '1', date: Time.now, winner: player1, loser: player4)
Match.create(winner_faction: 'Protoss', loser_faction: 'Zerg', duration: '1', date: Time.now, winner: player4, loser: player3)
Match.create(winner_faction: 'Zerg', loser_faction: 'Protoss', duration: '1', date: Time.now, winner: player2, loser: player1)
Match.create(winner_faction: 'Zerg', loser_faction: 'Terrans', duration: '1', date: Time.now, winner: player3, loser: player2)
Match.create(winner_faction: 'Zerg', loser_faction: 'Terrans', duration: '1', date: Time.now, winner: player1, loser: player3)
