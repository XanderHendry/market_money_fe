class MarketService
  def conn
    conn = Faraday.new(url: 'https://localhost:3000/api/v0') do |faraday|
    end
  end
end
