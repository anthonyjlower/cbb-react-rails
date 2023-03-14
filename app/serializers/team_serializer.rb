class TeamSerializer
  include JSONAPI::Serializer

  attributes :name,
             :record,
             :net_rank,
             :composite_rank,
             :ips,
             :net_rating,
             :offense_rank,
             :offense_rating,
             :defense_rank,
             :defense_rating,
             :tempo_rank,
             :luck_rank,
             :sos_rank,
             :first_round_perimiter?,
             :top_ranked_player,
             :top_100_players_count,
             :first_round_players_count,
             :free_throw_percentage,
             :two_point_percentage,
             :percent_of_shots_as_threes,
             :effective_field_goal_percentage,
             :turnover_rate,
             :offensive_rebound_rate,
             :free_throw_attempts_per_field_goal_attempt,
             :stocks,
             :points_per_game,
             :field_goal_percentage,
             :three_point_percentage,
             :free_throw_percentage,
             :sweet_sixteen_odds,
             :elite_eight_odds,
             :final_four_odds,
             :champ_odds,
             :in_tournament?

  attribute :players do |obj|
    obj.players.map do |player|
      PlayerSerializer.new(player).serializable_hash
    end
  end
end
