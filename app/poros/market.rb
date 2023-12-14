class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :lat,
              :lon,
              :vendor_count

  def initialize(market_details)
    @id = market_details[:id]
    @name = market_details[:name]
    @street = market_details[:street]
    @city = market_details[:city]
    @county = market_details[:county]
    @state = market_details[:state]
    @zip = market_details[:zip]
    @lat = market_details[:lat]
    @lon = market_details[:lon]
    @vendor_count = market_details[:vendor_count]
  end
end
