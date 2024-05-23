class Market
  attr_reader :name, :city, :state

  def initialize(attrs)
    @name = attrs[:attributes][:name]
    @city = attrs[:attributes][:city]
    @state = attrs[:attributes][:state]
  end
end
