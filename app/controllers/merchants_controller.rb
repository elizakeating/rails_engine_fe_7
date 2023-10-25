class MerchantsController < ApplicationController
  def index
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    json = JSON.parse(response.body, symbolize_names: true)
    @merchants = json[:data]
  end

  def show
    
  end
end