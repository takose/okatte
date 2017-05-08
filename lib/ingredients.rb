class Ingredient
  def cuttable?
    false
  end

  def raw_eatable?
    false
  end
end

class PlainBread < Ingredient
  attr_accessor :slice, :title, :condition
  def initialize(slice:)
    @slice = slice
    @condition = 0
    @title = '🍞'
  end

  def cuttable?
    true
  end

  def raw_eatable?
    true
  end
end

class Egg < Ingredient
  attr_accessor :size, :condition, :title
  def initialize
    @condition = 0
    @title = '🐣'
  end

  def raw_eatable?
    true
  end
end

class Potato < Ingredient
  attr_accessor :size, :condition, :title
  def initialize(size:)
    @size = size
    @condition = 0
    @title = '(potato)'
  end

  def cuttable?
    true
  end

  def raw_eatable?
    true
  end
end

class Sugar < Ingredient
  attr_accessor :condition, :title
  def initialize
    @condition = 0
    @title = '(sugar)'
  end

  def raw_eatable?
    true
  end
end

class Milk < Ingredient
  attr_accessor :condition, :title
  def initialize
    @condition = 0
    @title = '(milk)'
  end

  def raw_eatable?
    true
  end
end

class Chicken < Ingredient
  attr_accessor :condition, :title
  def initialize(part:)
    @part = part
    @condition = 0
    @title = '🐔#{part}'
  end

  def cuttable?
    true
  end
end
