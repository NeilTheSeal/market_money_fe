require "rails_helper"

RSpec.describe "Market Index", type: :feature do
  it "shows the market index page" do
    VCR.use_cassette("markets_index", serialize_with: :json) do |cassette|
      visit "/markets"

      expect(page).to have_text("Farmers Markets")

      expect(page).to have_text("39 North Marketplace")
      expect(page).to have_text("Sparks")
      expect(page).to have_text("Nevada")

      expect(page).to have_text("9th and Grand Farmers Market")
      expect(page).to have_text("Salina")
      expect(page).to have_text("Kansas")
    end
  end
end
