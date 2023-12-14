require 'rails_helper'

RSpec.describe MarketFacade do
  describe '#all_markets' do
    it 'converts a full list of Markets from parsed JSON to Market POROs', :vcr do
      poros = MarketFacade.new.all_markets
      expect(poros).to be_an(Array)
      expect(poros.first).to be_a(Market)
      expect(poros.first).to respond_to(:id)
      expect(poros.first).to respond_to(:name)
      expect(poros.first).to respond_to(:street)
      expect(poros.first).to respond_to(:city)
      expect(poros.first).to respond_to(:county)
      expect(poros.first).to respond_to(:state)
      expect(poros.first).to respond_to(:zip)
      expect(poros.first).to respond_to(:lon)
      expect(poros.first).to respond_to(:lat)
      expect(poros.first).to respond_to(:vendor_count)
    end
  end
  describe '#get_market', :vcr do
  it 'converts a single Market from parsed JSON to Market POROs', :vcr do
    market = MarketFacade.new.get_market('322458')
    expect(market).to be_a(Market)
    expect(market).to respond_to(:id)
    expect(market).to respond_to(:name)
    expect(market).to respond_to(:street)
    expect(market).to respond_to(:city)
    expect(market).to respond_to(:county)
    expect(market).to respond_to(:state)
    expect(market).to respond_to(:zip)
    expect(market).to respond_to(:lon)
    expect(market).to respond_to(:lat)
    expect(market).to respond_to(:vendor_count)
  end
  end
end 