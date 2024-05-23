class VendorService
  def self.retrieve_vendor(id)
    conn = Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.headers["accept"] = "application/json"
    end

    response = conn.get("/api/v0/vendors/#{id}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
