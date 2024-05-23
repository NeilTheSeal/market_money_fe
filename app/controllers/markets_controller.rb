class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new
  end

  def show
    facade = MarketFacade.new(params[:id])
    @market = facade.market
  end
end
