class Player
  attr_reader :name
  attr_accessor :points

  def initialize(name)
    @name = name
    @points = 3
  end
end