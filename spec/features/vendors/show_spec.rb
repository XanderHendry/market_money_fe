require 'rails_helper'

RSpec.describe 'Vendor Show', :vcr do
  describe 'visiting the vendor show page (/vendors/:vendor_id)', :vcr do
    it 'displays the given vendors details, and a list of its Vendors' do
      visit '/vendors/55823'
      save_and_open_page
      expect(page).to have_content("The Charcuterie Corner")
      expect(page).to have_content('Contact Info:')
      expect(page).to have_content('Name: Claudie Langworth III')
      expect(page).to have_content('Phone: 1-147-179-9747')
      expect(page).to have_content('Credit Accepted?: NO')
      expect(page).to have_content('Description: Vendor selling a variety of artisanal cured meats and sausages.')
    end
  end
end 