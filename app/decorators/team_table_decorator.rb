class TeamTableDecorator
  def initialize(serialized_teams:)
    @serialized_teams = serialized_teams
  end

  def team_rows
    @serialized_teams[:data].pluck(:attributes)
  end

  def column_settings
    [
      { field: 'name', filter: true, buttons: 'apply', pinned: 'left', cellClass: 'lock-pinned', filterParams: { buttons: ['reset'] } },
      # { field: 'record' },
      { headerName: 'Rank', field: 'net_rank', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Net Rating', field: 'net_rating', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'Off Rank', field: 'offense_rank', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Off Rtg', field: 'offense_rating', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'Def Rank', field: 'defense_rank', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Def Rtg', field: 'defense_rating', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Tempo', field: 'tempo_rank', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Luck', field: 'luck_rank', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'SoS', field: 'sos_rank', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: '1st Round Perimiter', field: 'first_round_perimiter?', sortable: true },
      { headerName: 'Highest Ranked Player', field: 'top_ranked_player', sortable: true },
      # { headerName: 'FT%', field: 'free_throw_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'eFG%', field: 'effective_field_goal_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'TO%', field: 'turnover_rate', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'OReb%', field: 'offensive_rebound_rate', sortable: true, filter: 'agNumberColumnFilter' },
      { headerName: 'FTA/FGA', field: 'free_throw_attempts_per_field_goal_attempt', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'PPG', field: 'points_per_game', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'FG%', field: 'field_goal_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: '3pt%', field: 'three_point_percentage', sortable: true, filter: 'agNumberColumnFilter' },
    ]
  end
end
