require "rails_helper"

RSpec.describe "Merchants Show" do
  it "I should see a list of items that merchant sells" do
    visit "/merchants/1"

    expect(page).to have_content("Schroeder-Jerde")
    
    within("#items") do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Qui Esse")
      expect(page).to have_content("Item Ea Voluptatum")

      expect("Item Nemo Facere").to appear_before("Item Qui Esse")
      expect("Item Qui Esse").to appear_before("Item Ea Voluptatum")
    end
  end
end