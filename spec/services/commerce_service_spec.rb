require "rails_helper"

RSpec.describe CommerceService do
  describe "instance methods" do
    describe "#get_merchants" do
      it "returns merchants data" do
        search = CommerceService.new.get_merchants

        expect(search).to be_a Hash
        expect(search[:data]).to be_an(Array)
        merchant_data = search[:data].first

        expect(merchant_data).to have_key(:id)
        expect(merchant_data[:id]).to be_a(String)

        expect(merchant_data).to have_key(:type)
        expect(merchant_data[:type]).to eq("merchant")

        expect(merchant_data).to have_key(:attributes)
        expect(merchant_data[:attributes][:name]).to be_a(String)
      end
    end

    describe "#get_merchant" do
      it "returns merchant data for one merchant" do
        search = CommerceService.new.get_merchant(1)

        expect(search).to be_a(Hash)
        expect(search[:data]).to be_a(Hash)
        merchant_data = search[:data]

        expect(merchant_data).to have_key(:id)
        expect(merchant_data[:id]).to be_a(String)

        expect(merchant_data).to have_key(:type)
        expect(merchant_data[:type]).to eq("merchant")

        expect(merchant_data).to have_key(:attributes)
        expect(merchant_data[:attributes][:name]).to be_a(String)
      end
    end

    describe "#get_merchant_items" do
      it "returns item data for one merchant" do
        search = CommerceService.new.get_merchant_items(1)

        expect(search).to be_a(Hash)
        expect(search[:data]).to be_an(Array)
        item_data = search[:data].first

        expect(item_data).to have_key(:id)
        expect(item_data[:id]).to be_a(String)

        expect(item_data).to have_key(:type)
        expect(item_data[:type]).to eq("item")

        expect(item_data).to have_key(:attributes)

        expect(item_data[:attributes]).to have_key(:name)
        expect(item_data[:attributes][:name]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:description)
        expect(item_data[:attributes][:description]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:unit_price)
        expect(item_data[:attributes][:unit_price]).to be_a(Float)
        
        expect(item_data[:attributes]).to have_key(:merchant_id)
        expect(item_data[:attributes][:merchant_id]).to be_an(Integer)
      end
    end

    describe "#get_items" do
      it "returns items data" do
        search = CommerceService.new.get_items

        expect(search).to be_a Hash
        expect(search[:data]).to be_an(Array)
        item_data = search[:data].first

        expect(item_data).to have_key(:id)
        expect(item_data[:id]).to be_a(String)

        expect(item_data).to have_key(:type)
        expect(item_data[:type]).to eq("item")

        expect(item_data).to have_key(:attributes)

        expect(item_data[:attributes]).to have_key(:name)
        expect(item_data[:attributes][:name]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:description)
        expect(item_data[:attributes][:description]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:unit_price)
        expect(item_data[:attributes][:unit_price]).to be_a(Float)
        
        expect(item_data[:attributes]).to have_key(:merchant_id)
        expect(item_data[:attributes][:merchant_id]).to be_an(Integer)
      end
    end

    describe "#get_item" do
      it "returns item data" do
        search = CommerceService.new.get_item(4)

        expect(search).to be_a Hash
        expect(search[:data]).to be_an(Hash)
        item_data = search[:data]

        expect(item_data).to have_key(:id)
        expect(item_data[:id]).to be_a(String)

        expect(item_data).to have_key(:type)
        expect(item_data[:type]).to eq("item")

        expect(item_data).to have_key(:attributes)

        expect(item_data[:attributes]).to have_key(:name)
        expect(item_data[:attributes][:name]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:description)
        expect(item_data[:attributes][:description]).to be_a(String)

        expect(item_data[:attributes]).to have_key(:unit_price)
        expect(item_data[:attributes][:unit_price]).to be_a(Float)
        
        expect(item_data[:attributes]).to have_key(:merchant_id)
        expect(item_data[:attributes][:merchant_id]).to be_an(Integer)
      end
    end
  end
end