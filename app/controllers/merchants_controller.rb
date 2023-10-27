class MerchantsController < ApplicationController
  def index
    @merchants = facade.merchants
  end

  def show
    @merchant = facade.merchant
    @items = facade.merchant_items
  end

  private

  def facade
    MerchantFacade.new(params[:id])
  end
end