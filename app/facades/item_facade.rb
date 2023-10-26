class ItemFacade
  def initialize(item)
    @item = item
  end

  def service
    CommerceService.new
  end

  def items
    json = service.get_items

    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def item(item)
    json = service.get_item(item)

    Item.new(json[:data])
  end
end