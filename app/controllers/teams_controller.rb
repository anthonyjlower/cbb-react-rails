class TeamsController < ApplicationController
  def index
    @table = TeamTableDecorator.new(serialized_teams: serialized_teams)
    @synced_at = redis_synced_at
  end

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

  def redis_synced_at
    date = redis.get('synced_at')
    date && date.to_datetime.strftime('%^b %d %Y @ %I:%M%p')
  end
end
