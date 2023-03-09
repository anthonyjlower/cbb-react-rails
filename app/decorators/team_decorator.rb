class TeamDecorator
  include ApplicationHelper
  NON_PERIMITER_POSITIONS = %w(PF C PF/C).freeze

  def initialize(team:)
    @team = team.with_indifferent_access
  end

  def id
    @team[:name].gsub(' ', '_')
  end

  def name
    @team[:name]
  end

  def record
    @record ||= @team[:record]
  end

  def net_rank
    @team[:kenpom_rank]
  end

  def net_rating
    @team[:kenpom_net_rating]
  end

  def offense_rank
    @team[:kenpom_adjusted_off_rank]
  end

  def offense_rating
    @team[:kenpom_adjusted_off]
  end

  def defense_rank
    @team[:kenpom_adjusted_def_rank]
  end

  def defense_rating
    @team[:kenpom_adjusted_def]
  end

  def tempo_rank
    @team[:kenpom_tempo_rank]
  end

  def luck_rank
    @team[:kenpom_luck_rank]
  end

  def sos_rank
    @team[:kenpom_sos_rank]
  end

  def players
    players_data.map { |player| PlayerDecorator.new(player: player) }
  end

  def top_100_players_count
    players_data.count
  end

  def first_round_players_count
    first_round_players.count
  end

  def top_ranked_player
    players_data.pluck(:draft_rank).min
  end

  def first_round_players
    @first_round_players ||= players_data.select { |player| player[:draft_rank].to_i <= 30 }
  end

  def first_round_perimiter?
    (first_round_players.pluck(:position) - NON_PERIMITER_POSITIONS).any?
  end

  # Calculated

  def composite_rank
    @composite_rank ||= ((net_rank + offense_rank + defense_rank) / 3.to_f).round(1)
  end

  def ips
    top_15_comp_points = composite_rank <= 15 ? 1 : 0
    top_25_comp_points = composite_rank <= 25 ? 1 : 0
    net_points = net_rank <= 15 ? 1 : 0
    def_points = defense_rank <= 20 ? 1 : 0
    off_points = offense_rank <= 20 ? 1 : 0
    [top_15_comp_points, top_25_comp_points, net_points, def_points, off_points].sum
  end

  def free_throw_percentage
    display_as_percentage((free_throw_makes / free_throw_attempts.to_f))
  end

  def effective_field_goal_percentage
    display_as_percentage(((field_goal_makes + 0.5 * three_point_makes) / field_goal_attempts.to_f))
  end

  def turnover_rate
    display_as_percentage(turnovers / possessions.to_f)
  end

  def offensive_rebound_rate
    display_as_percentage((offensive_rebounds / missed_shots.to_f))
  end

  def free_throw_attempts_per_field_goal_attempt
    (free_throw_attempts / field_goal_attempts.to_f).round(2)
  end

  def points_per_game
    points.to_f / games_played
  end

  def field_goal_percentage
    display_as_percentage((field_goal_makes / field_goal_attempts.to_f))
  end

  def two_point_percentage
    val = (field_goal_makes - three_point_makes).to_f / (field_goal_attempts - three_point_attempts).to_f
    display_as_percentage(val)
  end

  def three_point_percentage
    display_as_percentage((three_point_makes / three_point_attempts.to_f))
  end

  def percent_of_shots_as_threes
    display_as_percentage(three_point_attempts / field_goal_attempts.to_f)
  end

  def stocks
    ((@team[:steals] + @team[:blocks]) / games_played.to_f).round(2)
  end

  # Odds

  def sweet_sixteen_odds
    OddsCalculator.calc_breakeven(@team[:sweet_sixteen])
  end

  def elite_eight_odds
    OddsCalculator.calc_breakeven(@team[:elite_eight])
  end

  def final_four_odds
    OddsCalculator.calc_breakeven(@team[:final_four])
  end

  def champ_odds
    OddsCalculator.calc_breakeven(@team[:champ])
  end

  def in_tournament?
    @team[:sweet_sixteen].present?
  end

  private

  def players_data
    @players_data ||= @team.fetch(:players, [])
  end

  def missed_shots
    @missed_shots ||= (field_goal_attempts - field_goal_makes) + 0.44 * (free_throw_attempts - free_throw_makes)
  end

  def games_played
    @games_played ||= record.split('-').map(&:to_i).sum
  end

  def free_throw_makes
    @free_throw_makes ||= @team[:free_throw_makes]
  end

  def free_throw_attempts
    @free_throw_attempts ||= @team[:free_throw_attempts]
  end

  def field_goal_attempts
    @field_goal_attempts ||= @team[:field_goal_attempts]
  end

  def field_goal_makes
    @field_goal_makes ||= @team[:field_goal_makes]
  end

  def three_point_attempts
    @three_point_attempts ||= @team[:three_point_attempts]
  end

  def three_point_makes
    @three_point_makes ||= @team[:three_point_makes]
  end

  def offensive_rebounds
    @offensive_rebounds ||= @team[:off_rebs]
  end

  def points
    @points ||= @team[:points]
  end

  def turnovers
    @turnovers ||= @team[:turnovers]
  end

  def possessions
    @possesions ||= field_goal_attempts - offensive_rebounds + turnovers + 0.475 * free_throw_attempts
  end
end
