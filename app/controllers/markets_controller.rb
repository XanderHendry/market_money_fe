class MarketsController < ApplicationController

  def index
    @facade = MarketFacade.new.all_markets
  end

  def show
    
  end
end