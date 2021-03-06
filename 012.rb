# Problem started Sunday, May 13 at 9:47 PM
# Ended May 14 at 2:14 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

triangles = []
numberOfFactors = 0
i = 7
tri = 0

class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i|
      f << i
      f << self/i unless i == self/i
      f
    end
  end
end

until numberOfFactors > 500
  numberOfFactors = 0
  i += 1
  tri = (1..i).inject :+ # find its triangle number
  numberOfFactors = tri.factors.length # how many factors?
end

puts tri

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

76576500
It took 18890.964 ms.

=end
######################

# Problem:
#
# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?