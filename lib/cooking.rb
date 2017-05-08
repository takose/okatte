require "okatte/version"

class Cooking
  def initialize(title:, ingredients:, kitchenware:)
    @title = title
    @ingredients = ingredients
    @kitchenware = kitchenware
  end

  def start!
    puts @title
    puts "\n===== preparation ===== \n\ningredient:"
    text = ''
    @ingredients.each do |k ,v|
      text += "#{k.title * v} "
    end
    puts text
    puts "\nkitchenware:"
    text = ''
    @kitchenware.each do |k, _|
      text += "#{k.title} "
    end
    puts text
    puts "\n ===== cooking start! ===== \n\n"
  end
end
