a, b, i = 1, 1, 2
until (b.to_s.length == 1000)
  a, b, i = b, a+b, i+1
end
puts i

puts b