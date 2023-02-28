class EspnTeamStatsScraper
  ESPN_BASE_URL = 'https://www.espn.com/mens-college-basketball/team/stats/_/id'

  def initialize(tag:nil)
    @tag = tag
    @espn_ids = Team.all.pluck(:espn_id)
  end

  def scrape
    @espn_ids.each_with_object({}) do |id, h|
      pp "Fetching #{id}"
      h[id] = formatted_stats(team_data(id))
    end
  end

  private

  def formatted_stats(data)
    {
      field_goal_makes: parse_field_goal_makes(data),
      field_goal_attempts: parse_field_goal_attempts(data),
      free_throw_makes: parse_free_throw_makes(data),
      free_throw_attempts: parse_free_throw_attempts(data),
      three_point_makes: parse_three_point_makes(data),
      three_point_attempts: parse_three_point_attempts(data),
      points: parse_points(data),
      off_rebs: parse_off_rebs(data),
      def_rebs: parse_def_rebs(data),
      assists: parse_assists(data),
      turnovers: parse_turnovers(data),
      steals: parse_steals(data),
      blocks: parse_blocks(data),
    }.transform_values(&:to_i)
  end

  def parse_field_goal_makes(totals)
    totals[1].text
  end

  def parse_field_goal_attempts(totals)
    totals[2].text
  end

  def parse_free_throw_makes(totals)
    totals[3].text
  end

  def parse_free_throw_attempts(totals)
    totals[4].text
  end

  def parse_three_point_makes(totals)
    totals[5].text
  end

  def parse_three_point_attempts(totals)
    totals[6].text
  end

  def parse_points(totals)
    totals[7].text
  end

  def parse_off_rebs(totals)
    totals[8].text
  end

  def parse_def_rebs(totals)
    totals[9].text
  end

  def parse_assists(totals)
    totals[11].text
  end

  def parse_turnovers(totals)
    totals[12].text
  end

  def parse_steals(totals)
    totals[13].text
  end

  def parse_blocks(totals)
    totals[14].text
  end

  def team_data(id)
    url = @tag.nil? ? "#{ESPN_BASE_URL}/#{id}" + @tag : "#{ESPN_BASE_URL}/#{id}"
    doc = Nokogiri::HTML(URI.open(url))
    doc.css('tr').last.children.to_a
  end
end
