# As a user
# When I visit a specific snack page
# I see the name of that snack
# I see the price for that snack
# I see a list of locations with vending machines that carry that snack
# I see the average price for snacks in those vending machines
# And I see a count of the different kinds of items in that vending machine.

require 'rails_helper'

RSpec.describe "When a visitor visits an item show page" do
  scenario "they see information on that snack" do
    advanced_setup

    visit snack_path(@snack_1)

    expect(page).to have_content(@snack_1.name)
    expect(page).to have_content(@snack_1.price)
    expect(page).to have_content(@dons.location)
    expect(page).to have_content(@dons.average_snack_price)
    expect(page).to have_content(@dons.snacks.count)
  end
end
