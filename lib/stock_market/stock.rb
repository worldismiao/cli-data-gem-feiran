require 'nokogiri'
require 'open-uri'
require 'pry'

class StockMarket
  class Stock
    attr_accessor :ticker
    def initialize(ticker)
      @ticker = ticker
    end

    def yahoo_finance
      html = open("https://finance.yahoo.com/quote/#{ticker}")
      doc = Nokogiri::HTML(html)
      return doc
    end

    def google_finance
      html2=open("https://www.google.com/finance?q=#{ticker}")
      google_finance=Nokogiri::HTML(html2)
      return google_finance
    end

    def name
      yahoo_finance.css("#quote-header-info h1").text
    end

    def price
      google_finance.css('#ref_22144_l').text
    end

  end
end
