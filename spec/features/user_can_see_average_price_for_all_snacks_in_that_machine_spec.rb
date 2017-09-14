require 'rails_helper'

RSpec.feature "When a user visits a vending machine show page" do
  scenario "they see the average price of all snacks for that machine" do
    setup

    visit machine_path(@dons)

    expect(page).to have_content(2.25)
  end
end
