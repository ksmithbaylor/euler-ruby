# Problem started Tuesday, May 15 at 1:12 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

answer = 0
x = (1..100).reduce(:*).to_s.split(//)
x.each do |i|
  answer += i.to_i
end

puts answer

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

648
It took 0.171 ms.

=end
######################

# Problem:
#
# n! means n  (n  1)  ...  3  2  1
#
# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!