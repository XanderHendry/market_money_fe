require 'rails_helper'

RSpec.describe Vendor do
  it 'exists' do
    vendor = Vendor.new({id: "55823", name: "The Charcuterie Corner", description: "Vendor selling a variety of artisanal cured meats and sausages.", contact_name: "Claudie Langworth III", contact_phone: "1-147-179-9747", credit_accepted: false})

    expect(vendor).to be_a(Vendor)
    expect(vendor).to respond_to(:id)
    expect(vendor).to respond_to(:name)
    expect(vendor).to respond_to(:description)
    expect(vendor).to respond_to(:contact_name)
    expect(vendor).to respond_to(:contact_phone)
  end

  describe '#credit_accepted?' do
    it 'returns a boolean value for if a vendor accepts credit.' do
      vendor = Vendor.new({id: "55823", name: "The Charcuterie Corner", description: "Vendor selling a variety of artisanal cured meats and sausages.", contact_name: "Claudie Langworth III", contact_phone: "1-147-179-9747", credit_accepted: false})
      expect(vendor.credit_accepted?).to eq("NO")
    end
  end
end 