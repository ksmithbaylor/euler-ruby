# Problem started Sunday, May 13 at 4:34 AM
# Ended 5:18 AM
start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

max = (1..20).inject :*
answer = 0

def divisible(num, array)
  array.each do |f|
    return false if (num % f != 0)
  end
  true
end

(1..max).each do |x|
  answer += 20 * 20-1
  break if divisible(answer, (1..20))
end

puts answer

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

232792560
It took 449.757 ms.

=end
######################

# Problem:
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
