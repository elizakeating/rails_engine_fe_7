class MerchantFacade
  def initialize(merchant)
    @merchant = merchant
  end

  def service
    CommerceService.new
  end

  def merchants
    json = service.get_merchants

    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def merchant
    json = service.get_merchant(@merchant)

    Merchant.new(json[:data])
  end

  def merchant_items
    json = service.get_merchant_items(@merchant)
    
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end