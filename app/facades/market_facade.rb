class MarketFacade
  def initialize(id = nil)
    @id = id
  end

  def market
    json = MarketService.retrieve_market(@id)
    Market.new(json[:data])
  end

  def all_markets
    json = MarketService.retrieve_markets
    market_array(json)
  end

  def market_array(json)
    json[:data].map do |result|
      Market.new(result)
    end
  end
end
