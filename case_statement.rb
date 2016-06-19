distance_to_dock = "far away"
distance = 2

#case statement is using triple equals to do comparision
result = case distance_to_dock
           when "far away"
             "case 1"
           when "not far"
             "case 2"
           else
             "case 3"
         end


result = case distance_to_dock
           when "far away" then
             "case 3"
           when "not far" then
             "case 4"
         end

case
  when distance > 5
  when distance > 10
  else
    puts "OMG"
end

class Spaceship

end

ship = Spaceship.new
puts ship.is_a?(Spaceship)
puts result