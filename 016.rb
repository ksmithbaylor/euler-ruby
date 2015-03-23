# Problem started Monday, May 14 at 3:28 AM
# Ended 3:35 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

puts (2 ** 1000).to_s.split(//).collect{|i| i.to_i}.reduce(:+)

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

1366
It took 0.258 ms.

=end
######################

# Problem:
#
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?