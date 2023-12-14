require 'rails_helper'

RSpec.describe VendorFacade do
  describe '#market_vendors' do
    it 'converts a full list of Vendors belonging to a given Market from parsed JSON to vendor POROs', :vcr do
      poros = VendorFacade.new.market_vendors('322458')
      expect(poros).to be_an(Array)
      expect(poros.count).to eq(1)
      expect(poros.first).to be_a(Vendor)
      expect(poros.first).to respond_to(:id)
      expect(poros.first).to respond_to(:name)
      expect(poros.first).to respond_to(:description)
      expect(poros.first).to respond_to(:contact_name)
      expect(poros.first).to respond_to(:contact_phone)
    end
  end
  describe '#get_vendor', :vcr do
    it 'converts a single vendor from parsed JSON to vendor POROs', :vcr do
      vendor = VendorFacade.new.get_vendor("55823")
      expect(vendor).to be_a(Vendor)
      expect(vendor).to respond_to(:id)
      expect(vendor).to respond_to(:name)
      expect(vendor).to respond_to(:description)
      expect(vendor).to respond_to(:contact_name)
      expect(vendor).to respond_to(:contact_phone)
    end
  end
end 