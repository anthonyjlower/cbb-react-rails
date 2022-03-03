namespace :data_audit do
  task missing_nbadraft_names: :environment do
    puts "\e[32m Finding Teams \e[0m"
    puts "\e[32m ------------- \e[0m"
    player_data = NbaDraftScraper.new.scrape

    missing_teams = player_data.keys.map do |team_name|
      Team.find_by(:nbadraft_name, team_name) ? nil : team_name
    end.compact

    missing_teams.each { |team| puts "\e[31m #{team} \e[0m" }
  end
end
