class Spaceship
  def destination
    @autopilot.destination
  end

  def destination=(new_dest)
    @autopilot.destination = new_dest
  end
end

ship = Spaceship.new
ship.destination = "Earth"
puts ship.destination