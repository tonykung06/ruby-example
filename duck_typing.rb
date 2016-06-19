class Spaceship
  def capture(unit)
    unit.probe
  end
end

class DuckType1
  def probe
    puts 'duck type 1 probe'
  end
end

class DuckType2
  def probe
    puts 'duck type 2 probe'
  end
end

Spaceship.new.capture(DuckType1.new)
Spaceship.new.capture(DuckType2.new)
