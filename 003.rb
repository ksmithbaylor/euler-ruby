# Problem started Sunday, May 13 at 3:35 AM
# Ended 4:25 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

def largest_prime_factor x, i=3
  while i <= Math.sqrt(x)
    x % i == 0 ?  x /= i : i += 2
  end
  x
end

def lpf x, i=3
  return x if i > Math.sqrt(x)
  return lpf(x/i, i) if x % i == 0
  return lpf(x, i+2)
end

puts largest_prime_factor 600851475143
#puts lpf 600851475143

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

6857
It took 1661.8980000000001 ms.

=end
######################

# Problem:
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
