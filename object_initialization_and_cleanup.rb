class Spaceship
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ship = Spaceship.new("shipA", 12)
puts ship.inspect