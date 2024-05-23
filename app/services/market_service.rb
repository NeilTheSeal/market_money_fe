class MarketService
  def self.retrieve_markets
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.headers["accept"] = "application/json"
    end

    response = conn.get("/api/v0/markets")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.retrieve_market(id)
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.headers["accept"] = "application/json"
    end

    response = conn.get("/api/v0/markets/#{id}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
