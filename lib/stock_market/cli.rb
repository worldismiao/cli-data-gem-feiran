require_relative 'stock'

class StockMarket
  class CLI
    def call
      puts "Welcome Traders!"
      stock_info
      goodbye
    end

    def stock_info
      puts "Give me your ticker."
      ticker=gets.strip
      while ticker != 'exit' do
      stock = StockMarket::Stock.new(ticker)
      puts "Company Name: #{stock.name}"
      puts "Stock Price: #{stock.price}"
      puts "Give me another ticker or type 'exit'"
      ticker=gets.strip
      end
    end

    def goodbye
      puts "Thank you!"
    end
  end



end
