require "rails_helper"

RSpec.describe "Item Show", type: :feature do
  describe "when I visit /items/:id" do
    it "I should see the name of the item, description, and unit price" do
      visit item_path(4)

      expect(page).to have_content("Item Nemo Facere")
      
      within("#description") do
        expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      end

      within("#unit-price") do
        expect(page).to have_content("Unit Price: 42.91")
      end
    end
  end
end