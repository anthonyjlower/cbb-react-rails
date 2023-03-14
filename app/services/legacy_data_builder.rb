class LegacyDataBuilder
  KENPOM_TAG = '/index.php?y='
  DRAFT_TAG = '/?year-ranking='
  ESPN_TAG = '/season/'

  def initialize(year:)
    @year = year.to_s
  end

  def kenpom_data
    @kenpom_data ||= KenpomScraper.new(tag: KENPOM_TAG + @year).scrape
  end

  def draft_data
    @draft_data ||= NbaDraftScraper.new(tag: DRAFT_TAG + @year).scrape
  end

  def espn_data
    @espn_data ||= EspnTeamStatsScraper.new(tag: ESPN_TAG + @year).scrape
  end
end
