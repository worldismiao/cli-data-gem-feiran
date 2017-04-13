require 'nokogiri'
require 'open-uri'
require 'pry'
class StockMarket
  class Stock
    attr_accessor :ticker
    def initialize(ticker)
      @ticker = ticker
    end

    def doc
      html = open("https://www.google.com/finance?q=AAPL")
      doc = Nokogiri::HTML(html)
      return doc
    end

    def name
      self.doc.css(".appbar-snippet-primary").children.css("span").text
    end

    def price
      "140"
    end

  end
end
