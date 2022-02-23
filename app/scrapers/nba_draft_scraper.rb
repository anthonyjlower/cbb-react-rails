class NbaDraftScraper < WebScraper
  NBA_DRAFT_URL = 'https://www.nbadraft.net/rankings/bigboard'.freeze

  def initialize
    super(url: NBA_DRAFT_URL)
  end

  def scrape
    rows.each_with_object({}) do |row, h|
      data = row.css('td')
      key = parse_team_name(data)
      h.keys.include?(key) ? h[key] << formatted_player_data(data) : h[key] = [formatted_player_data(data)]
    end
  end

  private

  def parse_team_name(data)
    data.css('.team').text
  end

  def formatted_player_data(data)
    {
      draft_rank: parse_draft_rank(data),
      name: parse_name(data),
      position: parse_position(data),
      grade: parse_grade(data),
    }
  end

  def parse_draft_rank(data)
    data.css('.rank').text.to_i
  end

  def parse_name(data)
    data.css('.name').text
  end

  def parse_position(data)
    data.css('.teamposition').text
  end

  def parse_grade(data)
    data.css('.class').text
  end

  def rows
    @doc.css('tbody').children.to_a
  end
end
