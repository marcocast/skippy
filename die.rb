class Die

  def initialize(lname, fname)
    @lname = lname
    @fname = fname
    @cardinalities = ["North", "South", "East", "west"]
  end

  attr_reader :lname, :fname
  attr_writer :lname, :fname

  def throw

    return @cardinalities[rand(0..3)]

  end


  def 

end



die =  Die.new("marco", "cast")


puts die.lname


puts die.throw







