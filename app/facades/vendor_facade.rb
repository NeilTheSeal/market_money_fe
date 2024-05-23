class VendorFacade
  def initialize(id = nil)
    @id = id
  end

  def vendor
    json = VendorService.retrieve_vendor(@id)
    Vendor.new(json[:data])
  end
end
