require 'rails_helper' 

RSpec.describe MarketService do 
  describe '#conn' do 
    it 'returns a Faraday object' do 
      service = MarketService.new
      expect(service.conn).to be_a(Faraday::Connection)
    end
  end
  describe '#get_url' do 
    it 'returns parsed JSON data', :vcr do 
      parsed_response = MarketService.new.get_url('/api/v0/markets')
      expect(parsed_response).to be_a Hash
      expect(parsed_response[:data]).to be_an(Array)
    end
  end
  describe '#market_index' do 
    it 'returns a list of Markets', :vcr do
      list = MarketService.new.market_index
      expect(list[:data].count).to eq(846)
      market = list[:data].first
      expect(market).to be_a(Hash)
      expect(market).to have_key(:id)
      expect(market[:id]).to be_a(String)
      expect(market).to have_key(:attributes)
      expect(market).to be_a(Hash)
      expect(market[:attributes]).to have_key(:name)
      expect(market[:attributes][:name]).to be_a(String)
      expect(market[:attributes]).to have_key(:street)
      expect(market[:attributes][:street]).to be_a(String)
      expect(market[:attributes]).to have_key(:city)
      expect(market[:attributes][:city]).to be_a(String)
      expect(market[:attributes]).to have_key(:county)
      expect(market[:attributes][:county]).to be_a(String)
      expect(market[:attributes]).to have_key(:state)
      expect(market[:attributes][:state]).to be_a(String)
      expect(market[:attributes]).to have_key(:zip)
      expect(market[:attributes][:zip]).to be_a(String)
      expect(market[:attributes]).to have_key(:lat)
      expect(market[:attributes][:lat]).to be_a(String)
      expect(market[:attributes]).to have_key(:lon)
      expect(market[:attributes][:lon]).to be_a(String)
      expect(market[:attributes]).to have_key(:vendor_count)
      expect(market[:attributes][:vendor_count]).to be_a(Integer)
    end
  end
  describe '#market_show' do
    it 'returns a Markets details', :vcr do
      market = MarketService.new.market_show('322458')
      expect(market).to have_key(:data)
      expect(market).to be_a(Hash)
      expect(market[:data]).to have_key(:id)
      expect(market[:data][:id]).to eq('322458')
      market_details = market[:data][:attributes]
      expect(market_details[:name]).to eq("14\u0026U Farmers' Market")
      expect(market_details[:street]).to eq('1400 U Street NW ')
      expect(market_details[:city]).to eq("Washington")
      expect(market_details[:county]).to eq("District of Columbia")
      expect(market_details[:state]).to eq("District of Columbia")
      expect(market_details[:zip]).to eq('20009')
      expect(market_details[:lat]).to eq("38.9169984")
      expect(market_details[:lon]).to eq("-77.0320505")
      expect(market_details[:vendor_count]).to eq(1)
    end
  end
  xdescribe '#market_vendors' do
    it 'returns a list of a Markets Vendors' do
      
    end
  end
end 