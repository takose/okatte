require "okatte/version"

class Cooking
  attr_accessor :actions
  def initialize(title:, ingredients:, kitchenware:)
    @title = title
    @ingredients = ingredients
    @kitchenware = kitchenware
    @actions = []
  end

  def start!
    recipe = ''
    recipe += "🍴#{@title}🍴"
    recipe += preparation_header
    _ingredients = ''
    @ingredients.each do |ingredient ,amount|
      _ingredients += " #{ingredient.title * amount}\n"
    end
    recipe += _ingredients
    recipe += kitchenware_title
    _kitchenware = ''
    @kitchenware.each do |kitchenware, _|
      _kitchenware += " #{kitchenware.title}\n"
    end
    recipe += _kitchenware
    recipe += cooking_start_header
    @actions.each_with_index do |action, idx|
      recipe += "#{idx+1}. #{action}\n\n"
    end
    recipe
  end

  private

  def preparation_header
    "\n\n===== preparation ===== \n\ningredient:\n"
  end

  def kitchenware_title
    "\n\nkitchenware:\n"
  end

  def cooking_start_header
    "\n ===== cooking start! ===== \n\n"
  end
end
