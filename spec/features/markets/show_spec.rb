require 'rails_helper'

RSpec.describe 'Market Show', :vcr do
  describe 'visiting the market show page (/markets/:market_id)', :vcr do
    it 'displays the given Markets details, and a list of its Vendors' do
      visit '/markets/322458'
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content('1400 U Street NW')
      expect(page).to have_content("Washington, District of Columbia 20009")
      within('#market_vendors') do
        expect(page).to have_content("Vendors at our Market")
        expect(page).to have_content("The Charcuterie Corner")
      end
    end
  end
end 