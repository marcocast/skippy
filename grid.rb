require './point'

class Grid

  def initialize(size)
    if size < 1
      raise "size less than 1"
    end
    @homePoint =  Point.new(size-1,size-1)
  end

  attr_reader :homePoint

  def lies_outside(point)

    point.x <= @homePoint.x || point.y <= @homePoint.y

  end


end