namespace :sync_teams do
  task all_data: :environment do
    pp 'Starting Sync'
    redis = Redis.new
    pp 'building teams'
    teams = Team.build
    pp 'done building'
    redis.set('teams', teams.to_json)
    redis.set('synced_at', DateTime.current.in_time_zone('Central Time (US & Canada)'))
    pp 'Finished Sync'
  end
end
