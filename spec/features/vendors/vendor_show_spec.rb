require "rails_helper"

RSpec.describe "Vendor Show", type: :feature do
  it "shows the vendor show page" do
    VCR.use_cassette("vendor_show", serialize_with: :json) do |cassette|
      visit "/vendors/54849"

      body = JSON.parse(
        cassette.serializable_hash.dig(
          "http_interactions", 0, "response", "body", "string"
        ),
        symbolize_names: true
      )

      vendor = body[:data]
      attrs = vendor[:attributes]

      expect(page).to have_text(attrs[:name])
      expect(page).to have_text(attrs[:description])
      expect(page).to have_text(attrs[:contact_name])
      expect(page).to have_text(attrs[:contact_phone])

      if attrs[:credit_accepted]
        expect(page).to have_text("Credit Accepted")
      else
        expect(page).to have_text("Credit Not Accepted")
      end
    end
  end
end
