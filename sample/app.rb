require 'okatte'

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

puts cooking.start!

print '1.'
Action.cut(ingredient: plain_bread, amount: 4)
print '2.'
Action.mix(kitchenware: bowl, ingredients: [egg, milk, sugar])
print '3.'
Action.pickle(kitchenware: bowl, ingredients: [plain_bread])
print '4.'
Action.toast(ingredients: [plain_bread])
