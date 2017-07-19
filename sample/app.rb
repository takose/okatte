require './lib/okatte.rb'

# potato = Potato.new(size: 'middle')
# Action.cut(ingredient: potato, amount: 3)

cooking = Cooking.new(
  title: 'French toast',
  ingredients: {
    plain_bread = PlainBread.new(slice: 8) => 1,
    egg = Egg.new => 2,
    milk = Milk.new => 1,
    sugar = Sugar.new => 1
  },
  kitchenware: [
    bowl = Bowl.new(size: 'middle')
  ]
)

cooking.actions << Action.cut(ingredient: plain_bread, amount: 4)
cooking.actions << Action.mix(kitchenware: bowl, ingredients: [egg, milk, sugar])
cooking.actions << Action.pickle(kitchenware: bowl, ingredients: [plain_bread])
cooking.actions << Action.toast(ingredients: [plain_bread])

puts cooking.start!
