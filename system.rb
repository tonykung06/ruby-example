puts "Using backticks:"
res = `time /t` #the same as %x(time /t)
puts res

puts "Using system:"
res = system "time /t"
puts res