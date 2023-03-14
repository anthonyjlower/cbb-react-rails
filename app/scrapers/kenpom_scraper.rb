class KenpomScraper < WebScraper
  KENPOM_URL = 'https://kenpom.com'.freeze

  def initialize(tag:nil)
    @url = (tag ? KENPOM_URL + tag : KENPOM_URL)
    super(url: @url)
  end

  def scrape
    rows.flat_map do |row|
      next if header_row?(row)
      format_team_data(row.children.css('td').to_a)
    end.compact
  end

  def format_team_data(data)
    {
      team_name: parse_team_name(data),
      tournament_seed: parse_tournament_seed(data),
      record: parse_record(data),
      kenpom_rank: parse_kenpom_rank(data),
      kenpom_net_rating: parse_kenpom_net_rating(data),
      kenpom_adjusted_off_rank: parse_kenpom_adjusted_off_rank(data),
      kenpom_adjusted_off: parse_kenpom_adjusted_off(data),
      kenpom_adjusted_def_rank: parse_kenpom_adjusted_def_rank(data),
      kenpom_adjusted_def: parse_kenpom_adjusted_def(data),
      kenpom_tempo_rank: parse_kenpom_tempo_rank(data),
      kenpom_luck_rank: parse_kenpom_luck_rank(data),
      kenpom_sos_rank: parse_kenpom_sos_rank(data),
      kenpom_sos_net_rating: parse_kenpom_sos_net_rating(data),
    }
  end

  private

  def parse_team_name(data)
    data[1].text.tr("0-9", '').strip
  end

  def parse_tournament_seed(data)
    seed = data[1].css('.seed').text
    seed.present? ? seed.to_i : nil
  end

  def parse_conference(data)
    data[2].text
  end

  def parse_record(data)
    data[3].text
  end

  def parse_kenpom_rank(data)
    data[0].text.to_i
  end

  def parse_kenpom_net_rating(data)
    data[4].text.to_f
  end

  def parse_kenpom_adjusted_off_rank(data)
    data[6].text.to_i
  end

  def parse_kenpom_adjusted_off(data)
    data[5].text.to_f
  end

  def parse_kenpom_adjusted_def_rank(data)
    data[8].text.to_i
  end

  def parse_kenpom_adjusted_def(data)
    data[7].text.to_f
  end

  def parse_kenpom_tempo_rank(data)
    data[10].text.to_i
  end

  def parse_kenpom_luck_rank(data)
    data[12].text.to_i
  end

  def parse_kenpom_sos_rank(data)
    data[14].text.to_i
  end

  def parse_kenpom_sos_net_rating(data)
    data[13].text.to_f
  end

  def rows
    @doc.css('tbody tr').to_a
  end

  def header_row?(row)
    %w(thead1 thead2).include?(row.attributes['class']&.value)
  end
end
