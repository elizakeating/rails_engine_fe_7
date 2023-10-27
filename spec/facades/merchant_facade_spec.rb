require "rails_helper"

RSpec.describe MerchantFacade do
  before :each do
    @facade = MerchantFacade.new(1)
  end

  describe "instance methods" do
    describe "#merchants" do
      it "should return an array of merchant objects" do
        expect(@facade.merchants).to be_an(Array)
        expect(@facade.merchants.first).to be_a(Merchant)
      end
    end

    describe "#merchant" do
      it "should return a single merchant object" do
        expect(@facade.merchant).to be_a(Merchant)
      end
    end

    describe "#merchant_items" do
      it "should return an array of item objects" do
        expect(@facade.merchant_items).to be_an(Array)
        expect(@facade.merchant_items.first).to be_an(Item)
      end
    end
  end
end