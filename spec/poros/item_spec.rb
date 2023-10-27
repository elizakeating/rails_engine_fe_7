require "rails_helper"

RSpec.describe Item do
  before(:each) do
    @item_data = {
      id: 1,
      attributes: {
        name: "item 1",
        description: "this is item 1",
        unit_price: 378.61,
        merchant_id: 1
      }
    }

    @item = Item.new(@item_data)
  end

  describe "#initialize" do
    it "creates an Item object" do
      expect(@item).to be_an(Item)
      expect(@item.id).to eq(@item_data[:id])
      expect(@item.name).to eq(@item_data[:attributes][:name])
      expect(@item.description).to eq(@item_data[:attributes][:description])
      expect(@item.unit_price).to eq(@item_data[:attributes][:unit_price])
      expect(@item.merchant_id).to eq(@item_data[:attributes][:merchant_id])
    end
  end
end