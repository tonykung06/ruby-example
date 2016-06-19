class Spaceship
  def self.disable_engine

  end

  private_class_method :disable_engine

  def launch
    batten_hatches
  end

  def batten_hatches
    puts "Batten the hatches!"
  end

  private :batten_hatches
end

class SpritelySpaceship < Spaceship
  def initialize
    batten_hatches
  end
end

#private methods cannot be called with explicit receiver, so ship.batten_hatches failed
ship = Spaceship.new
ship.send :batten_hatches
# ship.batten_hatches
SpritelySpaceship.new