# Problem started Sunday, May 13 at 3:25 AM
# Ended 3:34 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

limit = 4000000
fib = [1, 2]
pos = 2
total = 0

# Generate Fibonacci sequence
begin
  fib << fib[pos-2] + fib[pos-1]
  pos += 1
end while ( fib[pos-1] < limit )
fib.pop

# Add all the even ones
fib.each do |x|
  total += x if (x % 2 == 0)
end

puts total

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

4613732
It took 0.074 ms.

=end
######################

# Problem:
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.