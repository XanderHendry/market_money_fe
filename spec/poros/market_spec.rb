require 'rails_helper'

RSpec.describe Market do
  it 'exists' do
    market = Market.new({id: '322458', name: "14\u0026U Farmers' Market", street: '1400 U Street NW ', city: "Washington", county: "District of Columbia", state: "District of Columbia", zip: '20009', lat: "38.9169984", lon:"-77.0320505", vendor_count: 1})

    expect(market).to be_a(Market)
    expect(market).to respond_to(:id)
    expect(market).to respond_to(:name)
    expect(market).to respond_to(:street)
    expect(market).to respond_to(:city)
    expect(market).to respond_to(:county)
    expect(market).to respond_to(:state)
    expect(market).to respond_to(:zip)
    expect(market).to respond_to(:lat)
    expect(market).to respond_to(:lon)
    expect(market).to respond_to(:vendor_count)
  end
end 