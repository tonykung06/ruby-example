class Spaceship
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    name == other.name
  end
end

ship1 = Spaceship.new("Serenity")
ship2 = Spaceship.new("Serenity")

puts ship1.equal?(ship2)
puts ship1 == ship2

a = "abc"
b = "abc"
puts a.equal?(b)
puts a == b

c = 2
d = 2
puts c.equal?(d)
puts c == d