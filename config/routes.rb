Rails.application.routes.draw do
  get '/:player_id' => 'matches#show_matches_player'
  get '/matches/:faction' => 'matches#show_faction_results'
end
