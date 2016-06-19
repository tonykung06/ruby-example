#only false and nil are falsy

lander_count = 12

if lander_count > 10
  "Launching"
elsif lander_count > 12
   "OMG"
else
  "Waiting"
end

def doSomething
  puts "do something"
end

message = if lander_count > 10 then "Launching" else "Waiting" end
message = lander_count > 10 ? "Waiting" : "Launching"

puts message

doSomething if lander_count > 10

unless lander_count > 25
  puts "unless"
end

puts "unless 2" unless lander_count > 25