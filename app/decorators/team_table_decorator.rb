class TeamTableDecorator
  def initialize(serialized_teams:)
    @team_data = serialized_teams[:data].pluck(:attributes)
  end

  def team_rows
    @team_data.map do |row|
      row.except(:playes)
    end
  end

  def column_settings
    [
      { field: 'name', filter: true, buttons: 'apply', filterParams: { buttons: ['apply', 'reset']} },
      { field: 'record' },
      { field: 'net_rank', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'net_rating', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'offense_rating', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'defense_rating', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'tempo_rank', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'luck_rank', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'sos_rank', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'first_round_perimiter?' },
      { field: 'top_ranked_player', sortable: true },
      { field: 'free_throw_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'effective_field_goal_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'turnover_rate', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'offensive_rebound_rate', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'free_throw_makes_per_field_goal_attempt', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'points_per_game', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'field_goal_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      { field: 'three_point_percentage', sortable: true, filter: 'agNumberColumnFilter' },
    ]
  end
end
