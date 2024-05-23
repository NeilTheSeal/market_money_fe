require "rails_helper"

RSpec.describe Market, type: :model do
  it "initializes with all attributes" do
    market = Market.new({
      attributes: {
        name: "Test Market",
        address: "123 Test St",
        city: "Test City",
        state: "Test State",
        zip: "12345"
      }
    })
    expect(market.name).to eq("Test Market")
    expect(market.address).to eq("123 Test St")
    expect(market.city).to eq("Test City")
    expect(market.state).to eq("Test State")
    expect(market.zip).to eq("12345")
  end
end
