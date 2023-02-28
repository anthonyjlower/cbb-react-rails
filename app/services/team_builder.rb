class TeamBuilder
  def initialize(kenpom_data:nil, draft_data:nil, espn_data:nil)
    @kenpom_data = kenpom_data || KenpomScraper.new.scrape
    @draft_data = draft_data || NbaDraftScraper.new.scrape
    @espn_data = espn_data || EspnTeamStatsScraper.new.scrape
    @kenpom_names = @kenpom_data.pluck(:team_name)
  end

  def build
    @kenpom_names.map do |kenpom_name|
      team_data(kenpom_name)
    end
  end

  private

  def team_data(kenpom_name)
    name = Team.find_by(:kenpom_name, kenpom_name)[:name]
    {
      name: name,
      players: player_attrs(name),
    }.merge(
      kenpom_attrs(name),
      stats_attrs(name)
    )
  end

  def player_attrs(name)
    nbadraft_name = Team.find_by(:name, name)[:nbadraft_name]
    @draft_data[nbadraft_name] || []
  end

  def kenpom_attrs(name)
    kenpom_name = Team.find_by(:name, name)[:kenpom_name]
    raise StandardError.new("Cannot find Kenpom team: #{name}") if kenpom_name.nil?
    team = @kenpom_data.find { |team| team[:team_name] == kenpom_name }
    return {} if team.nil?
    {
      record: team[:record],
      kenpom_rank: team[:kenpom_rank],
      kenpom_net_rating: team[:kenpom_net_rating],
      kenpom_adjusted_off_rank: team[:kenpom_adjusted_off_rank],
      kenpom_adjusted_off: team[:kenpom_adjusted_off],
      kenpom_adjusted_def_rank: team[:kenpom_adjusted_def_rank],
      kenpom_adjusted_def: team[:kenpom_adjusted_def],
      kenpom_tempo_rank: team[:kenpom_tempo_rank],
      kenpom_luck_rank: team[:kenpom_luck_rank],
      kenpom_sos_rank: team[:kenpom_sos_rank],
      kenpom_sos_net_rating: team[:kenpom_sos_net_rating],
    }
  end

  def stats_attrs(name)
    stats_id = Team.find_by(:name, name)[:espn_id]
    team = @espn_data[stats_id]
    raise StandardError.new("Cannot find ESPN team: #{name}") if team.nil?

    {
      field_goal_makes: team[:field_goal_makes],
      field_goal_attempts: team[:field_goal_attempts],
      free_throw_makes: team[:free_throw_makes],
      free_throw_attempts: team[:free_throw_attempts],
      three_point_makes: team[:three_point_makes],
      three_point_attempts: team[:three_point_attempts],
      points: team[:points],
      off_rebs: team[:off_rebs],
      def_rebs: team[:def_rebs],
      assists: team[:assists],
      turnovers: team[:turnovers],
      steals: team[:steals],
      blocks: team[:blocks],
    }
  end
end
