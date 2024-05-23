class Market
  attr_reader :name, :city, :state, :address, :zip

  def initialize(attrs)
    @name = attrs[:attributes][:name]
    @city = attrs[:attributes][:city]
    @state = attrs[:attributes][:state]
    @address = attrs[:attributes][:address]
    @zip = attrs[:attributes][:zip]
  end
end
