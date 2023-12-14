class VendorService
  def conn
    conn = Faraday.new(url: 'http://localhost:3000/') do |faraday|
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def vendor_show(vendor_id)
    vendor = get_url("/api/v0/vendors/#{vendor_id}")
  end
end