require 'rails_helper'

RSpec.describe 'Market Index' do
  describe 'visiting the market index page (/markets)' do
    it 'displays each markets name, city, state, and a button for more info' do
      visit markets_path

      expect(page).to have_content('Markets')
      expect(page).to have_content("Name")
      expect(page).to have_content("City")
      expect(page).to have_content("State")
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("Washington")
      expect(page).to have_content("District of Columbia")
      expect(page).to have_button('More Info')
    end
  end
end 