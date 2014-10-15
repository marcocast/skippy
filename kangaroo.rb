require './die'
require './kangaroo'
require './grid'
require './point'


class Kangaroo


  def initialize(grid, die)
    @position = Point.new(0,0)
    @die = die
    @grid = grid
  end

  def hop

    @moveTo =  @die.throw

    if @moveTo == 'North'
      @new_position = Point.new(@position.x, (@position.y + 1))
    elsif  @moveTo == 'South'
      @new_position = Point.new(@position.x, (@position.y - 1))
    elsif  @moveTo == 'West'
      @new_position = Point.new((@position.x - 1 ), @position.y)
    else
      @new_position = Point.new((@position.x + 1), @position.y)
    end

    if @grid.lies_outside(@new_position)
      puts "Oops, hit the boundary: (" + @new_position.x.to_s + "," + @new_position.y.to_s + ")"
      move(@position)
    elsif
      @position = @new_position
      puts "Hopped to: (" + @new_position.x.to_s + "," + @new_position.y.to_s + ")"
    end


  end



  def at_home

   @position == @grid.homePoint

  end


  def move(direction)

    @position = direction

  end

end

