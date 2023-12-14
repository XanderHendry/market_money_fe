class MarketFacade
  def all_markets
    json = MarketService.new.market_index
    json[:data].map do |market_data|
      Market.new({id: market_data[:id],
         name: market_data[:attributes][:name],
        street: market_data[:attributes][:street], 
        city: market_data[:attributes][:city], 
        couty: market_data[:attributes][:couty], 
        state: market_data[:attributes][:state], 
        zip: market_data[:attributes][:zip], 
        lat: market_data[:attributes][:lat], 
        lon: market_data[:attributes][:lon], 
        vendor_count: 
        market_data[:attributes][:vendor_count]})
    end
  end

  def get_market(id)
    json = MarketService.new.market_show(id)
    Market.new({id: json[:data][:id],
        name: json[:data][:attributes][:name],
      street: json[:data][:attributes][:street], 
      city: json[:data][:attributes][:city], 
      couty: json[:data][:attributes][:couty], 
      state: json[:data][:attributes][:state], 
      zip: json[:data][:attributes][:zip], 
      lat: json[:data][:attributes][:lat], 
      lon: json[:data][:attributes][:lon], 
      vendor_count: 
      json[:data][:attributes][:vendor_count]})
  end
end
