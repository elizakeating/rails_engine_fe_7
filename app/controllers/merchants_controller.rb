class MerchantsController < ApplicationController
  def index
    @merchants = facade.merchants
  end

  def show
    @merchant = facade.merchant(params[:id])
    @items = facade.merchant_items(params[:id])
  end

  private

  def facade
    MerchantFacade.new(params[:id])
  end
end