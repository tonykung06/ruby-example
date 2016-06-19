a = "abc"
b = a
puts a.object_id == b.object_id
a.upcase!
puts a
puts b

c = b.clone #shallow copy
c.downcase!
puts c
puts b