require 'rails_helper'

RSpec.feature "When a user visits a vending machine show page" do
  scenario "they see snacks associated to that machine" do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    cheetos = dons.snacks.create(name: "Flaming Hot Cheetos", price: 2.50)
    doritos = dons.snacks.create(name: "Doritos Cool Ranch", price: 2.00)

    visit machine_path(dons)

    expect(page).to have_content(cheetos.name)
    expect(page).to have_content(cheetos.price)
    expect(page).to have_content(doritos.name)
    expect(page).to have_content(doritos.price)
  end
end
