# Problem started Monday, May 14 at 2:35 AM
# Ended 3:28 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

# Found help with this solution at http://johnnycoder.com/blog/2010/07/05/project-euler-15-ruby/
# I got as far as discovering that it involved Pascal's triangle,
# and then decided that there was probably a formula I was missing.
# So, I looked it up.

class Integer
  def factorial
    (1..self).reduce :*
  end
end

dim = 20

puts (2 * dim).factorial / (dim.factorial ** 2)

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

137846528820
It took 0.063 ms.

=end
######################

# Problem:
#
# Starting in the top left corner of a 22 grid, there are 6 routes (without backtracking) to the bottom right corner.
#
#
# How many routes are there through a 2020 grid?