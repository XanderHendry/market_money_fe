class VendorsController < ApplicationController
  def show
    @facade = VendorFacade.new.get_vendor(params[:id])
  end
end