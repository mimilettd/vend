module Helpers
  def setup
    @owner = Owner.create(name: "Sam's Snacks")
    @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
    @cheetos = @dons.snacks.create(name: "Flaming Hot Cheetos", price: 2.50)
    @doritos = @dons.snacks.create(name: "Doritos Cool Ranch", price: 2.00)
  end

  def advanced_setup
    @owner = Owner.create(name: "Mimi's Enterprise")
    @dons = @owner.machines.create(location: "Don's Mixed Drinks")
    @turing = @owner.machines.create(location: "Turing Basement")
    @snack_1 = Snack.create(name: "White Castle Burger", price: 3.50)
    @snack_2 = Snack.create(name: "Pop Rocks", price: 1.50)
    @snack_3 = Snack.create(name: "Flaming Hot Cheetos", price: 2.50)

    @snacks = [@snack_1, @snack_2, @snack_3]

    @snacks.each do |snack|
      @dons.add(snack)
      @turing.add(snack)
    end

  end
end
