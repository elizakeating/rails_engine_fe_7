require "rails_helper"

RSpec.describe "Merchants Index", type: :feature do
  it "when I visit /merchants I should see a list of merchants by name, each being a link that takes me to their show page" do
    visit merchants_path

    expect(page).to have_content("Merchants")

    within("#merchants") do
      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Smitham LLC")
      expect(page).to have_link("Glover Inc")

      expect("Schroeder-Jerde").to appear_before("Smitham LLC")
      expect("Smitham LLC").to appear_before("Glover Inc")

      click_link("Schroeder-Jerde")
      expect(current_path).to eq("/merchants/1")
    end
  end
end