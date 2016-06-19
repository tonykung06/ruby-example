class Spaceship
  private #the visibility will be overriden
  def batten_hatches
    puts "Batten the hatches"
  end
end

ship = Spaceship.new

class Spaceship
  def batten_hatches
    puts "Avast!"
  end

  def batten_hatches2
    puts "OMG"
  end
end

ship.batten_hatches
ship.batten_hatches2
