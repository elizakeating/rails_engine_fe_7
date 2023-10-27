require "rails_helper"

RSpec.describe ItemFacade do
  before :each do
    @facade = ItemFacade.new(4)
  end

  describe "instance methods" do
    describe "#items" do
     it "should return array of items" do
      expect(@facade.items).to be_an(Array)
      expect(@facade.items.first).to be_an(Item)
     end
    end
  end
end