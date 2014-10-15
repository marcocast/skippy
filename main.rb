require './die'
require './kangaroo'
require './grid'

class Main

  def start

    die = Die.new
    kangaroo = Kangaroo.new(Grid.new(3), die)


    while kangaroo.at_home == false
      kangaroo.hop
    end

    puts die.stats

  end



end



Main.new.start