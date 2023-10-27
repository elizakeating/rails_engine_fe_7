require "rails_helper"

RSpec.describe Merchant do
  before :each do
    @merchant_data = {
      id: 1,
      attributes: {
      name: "A merchant"
      }
    }

    @merchant = Merchant.new(@merchant_data)
  end

  describe "#initialize" do
    it "creates a merchant object" do
      expect(@merchant).to be_a(Merchant)
      expect(@merchant.id).to eq(@merchant_data[:id])
      expect(@merchant.name).to eq(@merchant_data[:attributes][:name])
    end
  end
end