require "rails_helper"

RSpec.describe Vendor, type: :model do
  it "initializes with all attributes" do
    vendor = Vendor.new({
      attributes: {
        name: "Test Vendor",
        description: "Test Description",
        contact_name: "Test Contact",
        contact_phone: "123-456-7890",
        credit_accepted: false
      }
    })

    expect(vendor.name).to eq("Test Vendor")
    expect(vendor.description).to eq("Test Description")
    expect(vendor.contact_name).to eq("Test Contact")
    expect(vendor.contact_phone).to eq("123-456-7890")
    expect(vendor.credit_accepted).to eq(false)
  end
end
