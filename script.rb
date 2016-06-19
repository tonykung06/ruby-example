puts 'hello!'
#creating a global variable, no need to declare
puts lander_count = 10

#dynamic type
puts lander_count = "sufficient"

#return the class object of the reference
puts lander_count.class

#public_methods return an array of public methods, then sort the array
puts String.public_methods.sort

puts String.superclass

#BasicObject is the root of the class hierarchy
puts String.superclass.superclass

#event numbers are objects
puts 10.class

#declare a method
def double(val); val * 2; end

puts double(10)

puts double("abc")

puts double([1, 2, 3])

# irb has a special variable underscore _ shows the last evaluation result

#if you have a variable but don't have a value for it yet
lander_count = nil

#check if lander_count is nil, gives true
#the question mark is part of the method name
#conventionally, method names ended with a question mark will return true or false
#method names ended with a exclamation mark means doing something slightly unexpected or dangerous, e.g. modifying object in-place instead of creating a new copy
lander_count.nil?

a = " abc "
a.strip
puts a #still " abc "
a.strip!
puts a #gives "abc"

#two ways to do method declaration
def double(val); val * 2; end

testing = "testing" #global variable, conventionally globals are prefixed with a dollar sign
def double(val)
	testing = "testing" #local variable that shadows the global var of the same name
	val * 2 #methods return the result of evaluating the last expression, so no explict return statement is required, but you could it optionally
end

double(10)
double 10

def method1()
	nil
end

method1 #note that round brackets is optional for a method call when arg is optional

result = if lander_count > 10
	"testing"
else
	"testing2"
end

puts result

a = b = 10

#comparison operators, > >= < <= == !=
#math operators, + - * / % and ** (exponentiation)
#logical operators, ! && || not and or
#bitwise integer operators, & | ^ ~ << >>
#assignment shorthands, += -= *= /= %= **= &= |= ^= >>= <<=

#some built-in methods
print "Enter your name:"
name = gets
puts "Your name is " + name

#execute a command in another process and collects its result
result = `time /t` #ruby process will block until it's complete
result = %x(time /t) #the same as above except it returns true if the command finishes with 0 status and 0 for non-zero status, it returns nil if the command fails
#the output of the command is part of stdout, so it will be shown on the console even if it is not puts

#variable naming
my_awesome_var = 10

class Spaceship
end

ship = Spaceship.new

a = "abc"
b = a
a.upcase!
puts b #ABC

a.object_id #unique identifier of the object

b = a.clone #shallow copy
b.downcase!
puts a

class Spaceship
	def launch(destination) #instance method is public by default
		@destination = destination #instance variable, #all instance var are not visible outside of the class
	end

	def destination
		@destination
	end
end

ship = Spaceship.new
ship.launch("Earth")
puts ship.inspect
p ship #print out info about this object
puts ship.destination #error out as all instance var are not visible outside of the class


class Spaceship
	#colon means a symbol
	attr_accessor :testing, :destination #creating getter and setter

	attr_reader :name
	attr_writer :name

	def canel_launch
		destination = "" #local var
		self.destination = ""
	end
end

ship = Spaceship.new
ship.destination = "Earth"
puts ship.destination

#accessor is equalvalent as the following
class Spaceship
	def destination
		@destination
	end

	def destination=(new_des) #the equal sign in the method name sigifies it is an accessor
		@destination = new_des
	end
end

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

#implicitly extend from Object class
#Object class in turn extends from basic object which is an explicit blank class
class Spaceship
	def initialize(name)
		@name = name
		@test = 100
	end
end

ship = Spaceship.new("tony")

class Probe
	def take_sample(var1)
		#do something
	end
	def deploy
		#do something
	end
end

class MineralProbe < Probe
	def take_sample(var1, var2) #the number of parameters doesn't matter, it still overrides the method in the super class with the same name
		super #calling super without braces means passing the current args to the super method
		super()
      	#do other things below
	end
end

class Spaceship
	@@testing_var = 3 #static private variable
	def self.test #static method
		2
	end

	def self.testing_var
		@@testing_var
	end
end

class SpritelySpaceship < Spaceship
	@@testing_var = 5
end

Spaceship.test #5, static var is shared among all super and sub-classes

#class instance variable
class Spaceship
	@test = 2 #variable on the class
	def self.test
		@test
	end
end

class Spaceship
	def launch
	end

	def launch2
	end
	private :launch, :launch2 #make the method private
end