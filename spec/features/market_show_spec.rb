require "rails_helper"

RSpec.describe "Market Show", type: :feature do
  it "shows the market show page" do
    VCR.use_cassette("market_show", serialize_with: :json) do |cassette|
      visit "/markets/322482"

      body = JSON.parse(
        cassette.serializable_hash.dig(
          "http_interactions", 0, "response", "body", "string"
        ),
        symbolize_names: true
      )

      market = body[:data]
      attrs = market[:attributes]

      expect(page).to have_text(attrs[:name])
      expect(page).to have_text(attrs[:address])
      expect(page).to have_text(attrs[:city])
      expect(page).to have_text(attrs[:state])
      expect(page).to have_text(attrs[:zip])
    end
  end
end
