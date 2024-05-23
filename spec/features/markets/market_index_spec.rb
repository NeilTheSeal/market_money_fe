require "rails_helper"

RSpec.describe "Market Index", type: :feature do
  it "shows the market index page" do
    VCR.use_cassette("markets_index", serialize_with: :json) do |cassette|
      visit "/markets"

      expect(page).to have_text("Farmers Markets")

      body = JSON.parse(
        cassette.serializable_hash.dig(
          "http_interactions", 0, "response", "body", "string"
        ),
        symbolize_names: true
      )

      (1..5).each do |i|
        market = body[:data][i]
        attrs = market[:attributes]

        expect(page).to have_text(attrs[:name])
        expect(page).to have_text(attrs[:city])
        expect(page).to have_text(attrs[:state])
      end
    end
  end
end
