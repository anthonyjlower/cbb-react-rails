class TeamsController < ApplicationController
  def index
    @teams = get_decorated_teams
  end

  # def sync
  #   redis.set('teams', Team.build.to_json)
  #   redis.set('synced_at', current_time_central)

  #   redirect_to(teams_path)
  # end

  private

  def get_decorated_teams
    redis_teams.map do |team|
      TeamDecorator.new(team: team)
    end.sort_by(&:net_rank)
  end

  def redis_teams
    data = redis.get('teams')
    data.present? ? JSON.parse(data) : []
  end
end
