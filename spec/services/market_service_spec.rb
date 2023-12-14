require 'rails_helper' 

RSpec.describe MarketService do 
  describe '#conn' do 
    it 'returns a Faraday object' do 
      service = MarketService.new
      expect(service).to be_a(Faraday::Connection)
    end
  end
  describe '#get_url' do 
    it 'returns parsed JSON data' do 
      parsed_response = MarketService.new.get_url('/markets')
      expect(parsed_response).to be_a Hash
      expect(parsed_response[:results]).to be_an(Array)
    end
  end
  describe '#market_index' do 
    it 'returns a list of Markets' do
      list = MarketService.new.get_url('/markets')
      market = list[:results].first
      expect(market).to have_key(:name)
      expect(market[:name]).to be_a(String)
      expect(market).to have_key(:street)
      expect(market[:street]).to be_a(String)
      expect(market).to have_key(:city)
      expect(market[:city]).to be_a(String)
      expect(market).to have_key(:county)
      expect(market[:county]).to be_a(String)
      expect(market).to have_key(:state)
      expect(market[:state]).to be_a(String)
      expect(market).to have_key(:zip)
      expect(market[:zip]).to be_a(String)
      expect(market).to have_key(:lat)
      expect(market[:lat]).to be_a(String)
      expect(market).to have_key(:lon)
      expect(market[:lon]).to be_a(String)
    end
  end
end 