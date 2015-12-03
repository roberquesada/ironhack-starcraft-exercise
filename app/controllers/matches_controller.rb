class MatchesController < ApplicationController
  def show_matches_player
    render json: Match.get_player_matches(params[:player_id])
  end

  def show_faction_results
    matches = Match.get_faction_matches(params[:faction])
    win_porcent = Match.get_overall_win_porcentage(matches, params[:faction])
    render json: { win_porcent: win_porcent, matches: matches}
  end
end
