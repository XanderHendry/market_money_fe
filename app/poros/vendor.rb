class Vendor
  attr_reader :id,
              :name,
              :description,
              :contact_name,
              :contact_phone

  def initialize(vendor_details)
    @id = vendor_details[:id]
    @name = vendor_details[:name]
    @description = vendor_details[:description]
    @contact_name = vendor_details[:contact_name]
    @contact_phone = vendor_details[:contact_phone]
    @credit_accepted = vendor_details[:credit_accepted]
  end

  def credit_accepted?
    if @credit_accepted == true
      response = "YES"
    else
      response = "NO"
    end
    response
  end
end