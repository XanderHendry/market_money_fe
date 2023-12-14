require 'rails_helper' 

RSpec.describe VendorService do 
  describe '#conn' do 
    it 'returns a Faraday object' do 
      service = VendorService.new
      expect(service.conn).to be_a(Faraday::Connection)
    end
  end
  describe '#get_url' do 
    it 'returns parsed JSON data', :vcr do 
      parsed_response = VendorService.new.get_url('/api/v0/vendors/55823')
      expect(parsed_response).to be_a Hash
      expect(parsed_response[:data]).to be_an(Hash)
    end
  end
  describe '#market_show' do
    it 'returns a Markets details', :vcr do
      vendor = VendorService.new.vendor_show('55823')
      expect(vendor).to have_key(:data)
      expect(vendor).to be_a(Hash)
      expect(vendor[:data]).to have_key(:id)
      expect(vendor[:data][:id]).to eq('55823')
      expect(vendor[:data]).to have_key(:type)
      expect(vendor[:data][:type]).to eq('vendor')
      vendor_details = vendor[:data][:attributes]
      expect(vendor_details[:name]).to eq("The Charcuterie Corner")
      expect(vendor_details[:description]).to eq('Vendor selling a variety of artisanal cured meats and sausages.')
      expect(vendor_details[:contact_name]).to eq("Claudie Langworth III")
      expect(vendor_details[:contact_phone]).to eq("1-147-179-9747")
      expect(vendor_details[:credit_accepted]).to eq(false)
    end
  end
end 