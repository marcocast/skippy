require './die'
require './kangaroo'
require './grid'

class Main

  def initialize(gridSize)

    @gridSize = gridSize
  end

  def start

    die = Die.new
    kangaroo = Kangaroo.new(Grid.new(@gridSize), die)


    while kangaroo.at_home == false
      kangaroo.hop
    end

    puts die.stats

  end



end



Main.new(55).start