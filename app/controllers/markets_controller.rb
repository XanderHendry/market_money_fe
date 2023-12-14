class MarketsController < ApplicationController

  def index
    @facade = MarketFacade.new.all_markets
  end

  def show
    @market = MarketFacade.new.get_market(params[:id])
    @market_vendors = VendorFacade.new.market_vendors(params[:id])
  end
end