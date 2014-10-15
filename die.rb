class Die

  def initialize()
    @cardinalities = ["North", "South", "East", "West"]
    @cardinalitiesStas = Hash["North" => 0, "South" => 0, "East" => 0, "West" => 0]
    @total = 0
  end

  def throw

    @cardinalityToReturn = @cardinalities[rand(0..3)]


    @cardinalitiesStas[@cardinalityToReturn] = @cardinalitiesStas[@cardinalityToReturn] + 1


    @total = @total + 1
    return @cardinalityToReturn

  end


  def stats

    Hash[*@cardinalitiesStas.map{|k,str| [k,"#{(str*100/@total)}%"] }.flatten]

  end

end



