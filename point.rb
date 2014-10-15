class Point

  def initialize(x, y)
    @x = x
    @y = y
  end

  attr_reader :x, :y


  def ==(o)
    o.class == self.class && o.x == x && o.y == y
  end
  alias_method :eql?, :==

end


