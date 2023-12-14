class VendorFacade
  def market_vendors(market_id)
    json = MarketService.new.market_vendors(market_id)
    json[:data].map do |vendor_data|
      Vendor.new({id: vendor_data[:id],
         name: vendor_data[:attributes][:name],
        description: vendor_data[:attributes][:description], 
        contact_name: vendor_data[:attributes][:contact_name], 
        contact_phone: vendor_data[:attributes][:contact_phone], 
        credit_accepted: vendor_data[:attributes][:credit_accepted]
      })
    end
  end

  def get_vendor(id)
    json = VendorService.new.vendor_show(id)
    Vendor.new({id: json[:data][:id],
         name: json[:data][:attributes][:name],
        description: json[:data][:attributes][:description], 
        contact_name: json[:data][:attributes][:contact_name], 
        contact_phone: json[:data][:attributes][:contact_phone], 
        credit_accepted: json[:data][:attributes][:credit_accepted]
        })
  end
end