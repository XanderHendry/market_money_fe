class MarketService
  def conn
    conn = Faraday.new(url: 'http://localhost:3000/') do |faraday|
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def market_index
    markets = get_url('/api/v0/markets')
  end

  def market_show(market_id)
    market = get_url("/api/v0/markets/#{market_id}")
  end

  def market_vendors(market_id)
    market_vendors = get_url("/api/v0/markets/#{market_id}/vendors")
  end
end
