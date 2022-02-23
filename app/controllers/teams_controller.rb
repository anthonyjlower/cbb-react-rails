class TeamsController < ApplicationController
  # before_action :get_decorated_teams

  def index
    @table = TeamTableDecorator.new(serialized_teams: serialized_teams)
  end

  # def sync
  #   redis.set('teams', Team.build.to_json)
  #   redis.set('synced_at', current_time_central)

  #   redirect_to(teams_path)
  # end

  private

  def serialized_teams
    @serialized_teams ||= TeamSerializer.new(decorated_teams).serializable_hash
  end

  def decorated_teams
    @teams ||= redis_teams.map do |team|
      TeamDecorator.new(team: team)
    end.sort_by(&:net_rank)
  end

  def redis_teams
    data = redis.get('teams')
    data.present? ? JSON.parse(data) : []
  end

  def team_column_defs
    [
      { field: 'name', sortable: true, filter: true },
      { field: 'record' },
      { field: 'net_rank', sortable: true, filter: 'agNumberColumnFilter' },
    ]
  end
end
