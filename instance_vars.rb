#by default, instance variables are private and instance methods are public
class Spaceship
  attr_accessor :name1, :name2
  attr_reader :name3
  attr_writer :name4

  def launch(destination)
    @destination = destination
    self.name1 = "name1"
  end

  def destination
    @destination
  end

  def destination=(new_destination)
    @destination = new_destination
  end
end

ship = Spaceship.new
ship.launch("Earth")
puts ship.inspect
p ship
ship.destination = "not Earth"
puts ship.destination
puts ship.name1