class VendorsController < ApplicationController
  def show
    facade = VendorFacade.new(params[:id])
    @vendor = facade.vendor
  end
end
