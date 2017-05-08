class Bowl
  attr_reader :actions, :title
  
  def initialize(size:)
    @actions = [:mix, :pickle]
    @size = size
    @title = '(bowl)'
  end
end
