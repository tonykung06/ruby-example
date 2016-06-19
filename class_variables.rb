class Spaceship
  @@thruster_count = 2
  def self.thruster_count
    @@thruster_count
  end
end

class SpritelySpaceship < Spaceship
  @@thruster_count = 4
end

class EconolineSpaceship < Spaceship
  @@thruster_count = 1
end

puts Spaceship.thruster_count