class Action
  class << self
    def cut(amount:, ingredient:)
      raise ArgumentError, "#{ingredient.class.name} is not cuttable" unless ingredient.cuttable?
      step = "🔪\n  #{ingredient.title}"
      # loop do
      #   step += '🔪'
      #   ingredient.condition += 1
      #   break if finish_condition?(ingredient.condition, amount)
      # end
      step
    end

    def mix(kitchenware:, ingredients: [])
      raise ArgumentError, "#{kitchenware.class.name} can't mix" unless kitchenware.actions.include?(:mix)
      step = "🌀 #{kitchenware.title}\n  #{ingredients.map(&:title).join}"
      step
    end

    def pickle(kitchenware:, ingredients: [])
      raise ArgumentError, "#{kitchenware.class.name} can't pickle" unless kitchenware.actions.include?(:pickle)
      step = "(pickle) #{kitchenware.title}\n  #{ingredients.map(&:title).join}"
      step
    end

    def toast(kitchenware: nil, ingredients: [])
      raise ArgumentError, "#{kitchenware.class.name} can't toast" if kitchenware && !kitchenware.actions.include?(:toast)
      step = "🍳🔥\n  #{ingredients.map(&:title).join}"
      step
    end

    private

    def finish_condition?(condition, arg)
      condition >= arg
    end
  end
end

