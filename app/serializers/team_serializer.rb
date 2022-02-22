class TeamSerializer
  include JSONAPI::Serializer

  attributes :name,
             :record,
             :net_rank,
             :net_rating,
             :offense_rating,
             :defense_rating,
             :tempo_rank,
             :luck_rank,
             :sos_rank,
             :first_round_players,
             :first_round_perimiter?,
             :free_throw_percentage,
             :effective_field_goal_percentage,
             :turnover_rate,
             :offensive_rebound_rate,
             :free_throw_makes_per_field_goal_attempt,
             :points_per_game,
             :field_goal_percentage,
             :three_point_percentage,
             :free_throw_percentage

  attribute :players do |obj|
    obj.players.map do |player|
      PlayerSerializer.new(player).serializable_hash
    end
  end
end
