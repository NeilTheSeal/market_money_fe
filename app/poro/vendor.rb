class Vendor
  attr_reader :name, :description, :contact_name, :contact_phone,
              :credit_accepted

  def initialize(attrs)
    @name = attrs[:attributes][:name]
    @description = attrs[:attributes][:description]
    @contact_name = attrs[:attributes][:contact_name]
    @contact_phone = attrs[:attributes][:contact_phone]
    @credit_accepted = attrs[:attributes][:credit_accepted]
  end
end
