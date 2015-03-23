# Problem started Sunday, May 13 at 6:02 AM
# Ended 6:35 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

require 'mathn'

primes = []
class Integer
  def isPrime
      if self < 2
        return false
      elsif self % 2 == 0
        return self == 2
      elsif self % 3 == 0
        return self == 3
      elsif self < 9
        return true
      else
        r = (self**0.5).floor
        f = 5
        f.step r,6 do |g|
          if self % g == 0 or self % (g + 2) == 0
            return false
          end
        end
        return true
      end
  end
end

def primeAt(x, primes)
  num = 0
  until primes[x] != nil do
    primes << num if num.isPrime
    num += 1
  end
  primes.pop
  primes.last
end

puts primeAt(10001, primes)

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

104743
It took 107.488 ms.

=end
######################

# Problem:
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?