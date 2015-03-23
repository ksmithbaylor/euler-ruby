# Problem started Sunday, May 13 at 2:57 AM
# Ended 3:00 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

total = 0

(1..9999999).each do |x|
  total = total + x if (x % 3 == 0 ||
                        x % 5 == 0   )
end

puts total

def hello

end

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

233168
It took 0.885 ms.

=end
######################

# Problem:
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
