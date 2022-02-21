class WebScraper
  require 'nokogiri'
  require 'open-uri'

  def initialize(url:)
    @url = url
    @doc = Nokogiri::HTML(URI.open(@url))
  end

  def scrape
    raise NotImplementedError, 'Subclass did not implement #scrape'
  end
end
