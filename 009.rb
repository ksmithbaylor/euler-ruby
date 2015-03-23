# Problem started Sunday, May 13 at 6:55 AM
# Ended 7:07 PM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

answer = 0

(0..1000).each do |a|
  (a+1..1000).each do |b|
    (b+1..1000).each do |c|
      answer = a*b*c if (( a+b+c == 1000 ) && ( a*a + b*b == c*c ))
    end
  end
end

puts answer

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

31875000
It took 12786.403999999999 ms.

=end
######################

# Problem:
#
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# 
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.