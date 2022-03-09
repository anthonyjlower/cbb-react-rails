class TeamTableDecorator
  def initialize(serialized_teams:, columns:)
    @serialized_teams = serialized_teams
    @columns = columns || 'head_to_head'.freeze
  end

  def team_rows
    @serialized_teams[:data].pluck(:attributes)
  end

  def column_settings
    return default_columns if @columns.nil?
    return default_columns + expanded_player_columns + factor_four_columns if @columns == 'head_to_head'
    return default_columns + odds_columns if @columns == 'odds'
  end

  private

  def default_columns
    [
      { field: 'name', filter: true, resizable: false, pinned: 'left', cellClass: 'lock-pinned', filterParams: { buttons: ['reset'] } },
      { headerName: 'Rank', field: 'net_rank', sortable: true, filter: 'agNumberColumnFilter', filterParams: { buttons: ['reset'] } },
      { headerName: 'Off Rank', field: 'offense_rank', sortable: true, filter: 'agNumberColumnFilter', filterParams: { buttons: ['reset'] } },
      { headerName: 'Def Rank', field: 'defense_rank', sortable: true, filter: 'agNumberColumnFilter', filterParams: { buttons: ['reset'] } },
      { headerName: '1st Round Perimiter', field: 'first_round_perimiter?', sortable: true, filter: true, filterParams: { buttons: ['reset'] } },
      { headerName: 'Highest Ranked Player', field: 'top_ranked_player', sortable: true, filter: 'agNumberColumnFilter', filterParams: { buttons: ['reset'] } },
    ]
  end

  def expanded_player_columns
    [
      { headerName: 'Total Top 100', field: 'top_100_players_count', sortable: true, tooltipField: 'top_100_players_count' },
      { headerName: 'Total Top 30', field: 'first_round_players_count', sortable: true },
    ]
  end

  def odds_columns
    [
      { headerName: 'Sweet 16 Odds', field: :sweet_sixteen_odds, sortable: true },
      { headerName: 'Elite 8 Odds', field: :elite_eight_odds, sortable: true },
      { headerName: 'Final 4 Odds', field: :final_four_odds, sortable: true },
      { headerName: 'Champ Odds', field: :champ_odds, sortable: true },
    ]
  end

  def factor_four_columns
    [
      { headerName: 'eFG%', field: 'effective_field_goal_percentage', sortable: true },
      { headerName: 'TO%', field: 'turnover_rate', sortable: true },
      { headerName: 'OReb%', field: 'offensive_rebound_rate', sortable: true },
      { headerName: 'FTA/FGA', field: 'free_throw_attempts_per_field_goal_attempt', sortable: true },
    ]
  end

  # def stats_columns
    # { field: 'record' },
      # { headerName: 'Net Rating', field: 'net_rating', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Off Rtg', field: 'offense_rating', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Def Rtg', field: 'defense_rating', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Tempo', field: 'tempo_rank', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'Luck', field: 'luck_rank', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'PPG', field: 'points_per_game', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'FG%', field: 'field_goal_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: '3pt%', field: 'three_point_percentage', sortable: true, filter: 'agNumberColumnFilter' },
      # { headerName: 'FT%', field: 'free_throw_percentage', sortable: true, filter: 'agNumberColumnFilter' },
  # end
end
