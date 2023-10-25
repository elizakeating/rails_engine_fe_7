class MerchantsController < ApplicationController
  def index
    # response = Faraday.get("http://localhost:3000/api/v1/merchants")
    # json = JSON.parse(response.body, symbolize_names: true)
    # @merchants = json[:data]
    @merchants = facade.merchants
  end

  def show
    @merchant = facade.merchant(params[:id])
    @items = facade.merchant_items(params[:id])
    # merchant_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}")
    # merchant_json = JSON.parse(merchant_response.body, symbolize_names: true)
    # @merchant = merchant_json[:data]

    # items_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}/items")
    # items_json = JSON.parse(items_response.body, symbolize_names: true)
    # @items = items_json[:data]
  end

  private

  def facade
    MerchantFacade.new(params[:id])
  end
end