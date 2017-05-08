class Action
  class << self
    def cut(amount:, ingredient:)
      step = ''
      loop do
        step += '🔪'
        ingredient.class.condition += 1
        break if finish_condition?(ingredient.class.condition, amount)
      end
      puts step
    end

    private

    def finish_condition?(condition, arg)
      condition >= arg
    end
  end
end

class Ingredient
  @condition = 0
  @raw_eatable = false
  @cuttable = false
  class << self
    attr_accessor :condition, :cuttable, :raw_eatable
    def inherited(klass)
      klass.cuttable = @cuttable
      klass.raw_eatable = @raw_eatable
      klass.condition = @condition
    end
  end

  def set_cuttable(cuttable)
    @cuttable = !!cuttable
  end

  def set_raw_eatable(raw_eatable)
    @cuttable = !!raw_eatable
  end

  def proceed_condition
    @condition += 1
  end
end

class Vegitable < Ingredient
  def initialize
    set_cuttable(true)
  end
end

class Potato < Vegitable
  attr_accessor :size, :condition
  def initialize(size:)
    @size = size
  end
end

potato = Potato.new(size: 'middle')
Action.cut(ingredient: potato, amount: 3)
