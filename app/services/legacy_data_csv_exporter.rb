require 'csv'

class LegacyDataCsvExporter
  YEARS = %w(09 10 11 12 13 14 15 16 17 18 19 21 22)

  def initialize
    @redis = Redis.new
  end

  def export!
    CSV.open("#{Rails.root}/tmp/legacy-data.csv", 'wb', headers: true) do |csv|
      csv << ['year'] + headers
      YEARS.each do |year|
        yearly_collection(year)[:data].each { |row| csv << ["20#{year}"] + row[:attributes].values}
      end
    end
  end

  private

  def headers
    [:name,
     :record,
     :net_rank,
     :net_rating,
     :offense_rank,
     :offense_rating,
     :defense_rank,
     :defense_rating,
     :tempo_rank,
     :luck_rank,
     :sos_rank,
     :first_round_perimiter?,
     :top_ranked_player,
     :top_100_players_count,
     :first_round_players_count,
     :free_throw_percentage,
     :two_point_percentage,
     :percent_of_shots_as_threes,
     :effective_field_goal_percentage,
     :turnover_rate,
     :offensive_rebound_rate,
     :free_throw_attempts_per_field_goal_attempt,
     :points_per_game,
     :field_goal_percentage,
     :three_point_percentage,
     :sweet_sixteen_odds,
     :elite_eight_odds,
     :final_four_odds,
     :champ_odds,
     :in_tournament?,
     :players]
  end

  def yearly_collection(year)
    TeamSerializer.new(
      JSON.parse(@redis.get("#{year}_teams")).map { |team| TeamDecorator.new(team: team) }
    ).serializable_hash
  end
end
