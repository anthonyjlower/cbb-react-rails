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

  task :import_538_odds, %i[filename] => [:environment] do |_,args|
    require 'csv'

    doc = CSV.parse(File.read("./lib/csv/#{args.filename}"), headers: true)
    redis = Redis.new
    teams = JSON.parse(redis.get('teams'))

    doc.each do |i|
      row = i.to_h
      data = {
        sweet_sixteen: row['SWEET 16'].to_f,
        final_four: row['FINAL FOUR'].to_f,
        elite_eight: row['ELITE EIGHT'].to_f,
        champ: row['WIN'].to_f
      }

      binding.pry if Team.find_by('538', row.values.first).nil?
      teams.find { |team| team['name'] == Team.find_by('538', row.values.first)[:name] }.merge!(data)
    end

    redis.set('teams', teams.to_json)
  end
end
