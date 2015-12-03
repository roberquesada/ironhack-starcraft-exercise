class Match < ActiveRecord::Base
   belongs_to :loser, class_name: 'Player'
   belongs_to :winner, class_name: 'Player'

   def self.get_player_matches player_id
     Match.joins(
     "INNER JOIN 'players' ON
     'players'.'id' = 'matches'.'winner_id'"
     ).where("'players'.'id' = " + player_id)
   end

   def self.get_faction_matches faction
     faction.capitalize!
     Match.joins(
     "INNER JOIN 'players' ON 'players'.'id' = 'matches'.'winner_id'"
     ).where("'matches'.'winner_faction' = '" + faction + "' OR 'matches'.'loser_faction' = '" + faction + "'")
   end

   def self.get_overall_win_porcentage matches, faction
     faction.capitalize!
     total = matches.count
     win_matches_count = matches.select {|match| match.winner_faction == faction }.count
     100 * win_matches_count / total
   end
end
