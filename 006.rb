# Problem started Sunday, May 13 at 5:20 AM
# Ended 5:24 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

sum_of_squares = 0
square_of_sums = 0

(1..100).each do |x|
  sum_of_squares += x * x
  square_of_sums += x
end
square_of_sums *= square_of_sums

puts square_of_sums - sum_of_squares

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

25164150
It took 0.036000000000000004 ms.

=end
######################

# Problem:
#
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.