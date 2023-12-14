class MarketsController < ApplicationController

  def index
    @facade = MarketFacade.new.all_markets
  end
end