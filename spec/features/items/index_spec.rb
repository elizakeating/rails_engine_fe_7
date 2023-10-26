require "rails_helper"

RSpec.describe "Item Index", type: :feature do
  describe "when I visit /items" do
    it "I should see a list of all items by name that are links to their show page (/items/:id)" do
      visit items_path

      expect(page).to have_content("Items")

      within("#items") do
        expect(page).to have_link("Item Nemo Facere")
        expect(page).to have_link("Item Voluptatem Sint")
        expect(page).to have_link("Item Qui Veritatis")

        expect("Item Nemo Facere").to appear_before("Item Voluptatem Sint")
        expect("Item Voluptatem Sint").to appear_before("Item Qui Veritatis")

        click_link("Item Nemo Facere")
        expect(current_path).to eq(item_path(4))
      end
    end
  end
end