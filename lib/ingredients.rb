require 'hashie'
require 'yaml'
require 'pathname'

class Ingredient
  def self.method_missing(name, *args, &block)
    # config.send(name)
    config.egg
  end

  def self.config
    unless @config
      config_file = "#{File.dirname(__FILE__)}/../config/ingredients.yml"
      @config = Hashie::Mash.load(config_file)
    end
    @config
  end
end
