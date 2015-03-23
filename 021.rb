# Problem started Tuesday, May 15 at 9:25 AM 

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

class Integer
  def factors
    f = []
    1.upto(Math.sqrt(self)+1).each do |x|
      if self % x == 0 and self != x
        f << x
        f << self / x unless x == 1
      end
    end
    f
  end
  
  def amicable?
    return false if self == 1
    return false if self == self.factors.sum
    return true  if self == self.factors.sum.factors.sum
  end
end

class Array
  def sum
    self.reduce :+
  end
end

answer = 0
(1..10000).each do |x|
  if x.amicable?
    answer += x
  end
end

puts answer

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

31626
It took 451.132 ms.

=end
######################

# Problem:
#
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.
