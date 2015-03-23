# Problem started Sunday, May 13 at 7:08 PM
# Ended 7:09 PM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

require 'mathn'

answer = 0

Prime.each(2000000) {|x| answer += x}

puts answer

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

142913828922
It took 5474.652 ms.

=end
######################

# Problem:
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.