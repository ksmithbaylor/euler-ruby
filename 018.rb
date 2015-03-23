# Problem started Monday, May 14 at 6:06 PM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

data = [75,95,64,17,47,82,18,35,87,10,20,4,82,47,65,19,1,23,75,3,34,88,2,77,73,7,63,67,99,65,4,28,6,16,70,92,41,41,26,56,83,40,80,70,33,41,48,72,33,47,32,37,16,94,29,53,71,44,65,25,43,91,52,97,51,14,70,11,33,28,77,73,17,78,39,68,17,57,91,71,52,38,17,14,91,43,58,50,27,29,48,63,66,4,68,89,53,67,30,73,16,69,87,40,31,4,62,98,27,23,9,70,98,73,93,38,53,60,4,23].reverse! # So we can pop them off the back of the array

# Initialize the $triangle
$number_of_rows = 15 # Change this based on the problem (see #67)
$triangle = []
(0..$number_of_rows).each do |i| # Build a 2D array
  $triangle[i] = []
end

# Read the data into the $triangle
(0..$number_of_rows).each do |row|
  (row+1).times do
    $triangle[row] << data.pop
  end
end

# "Compresses" the triangle, going from top to bottom and
# determining the maximum sum you could have if you ended
# up at that cell.
def compress
  $compressed = $triangle
  (1..$number_of_rows-1).each do |row|
    (0..$compressed[row].length-1).each do |col|
      my_val = $compressed[row][col]
      if col == 0 # Left edge
        $compressed[row][col] = my_val + $compressed[row-1][col]
      elsif row == col # Right edge
        $compressed[row][col] = my_val + $compressed[row-1][col-1]
      else
        left  = $compressed[row-1][col-1]
        right = $compressed[row-1][col]
        if left > right
          $compressed[row][col] = my_val + left
        else
          $compressed[row][col] = my_val + right
        end
      end
    end
  end
end

# Finds the maximum value of the last row
def solve
  max = 0
  (0..$number_of_rows-1).each do |cell|
    if $compressed[$number_of_rows-1][cell] > max
      max = $compressed[$number_of_rows-1][cell]
    end
  end
  return max
end

compress
puts solve

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

1074
It took 0.115 ms.

=end
######################

# Problem:
#
# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.
#
# 3
# 7 4
# 2 4 6
# 8 5 9 3
#
# That is, 3 + 7 + 4 + 9 = 23.
#
# Find the maximum total from top to bottom of the triangle below:
#
# 75
# 95 64
# 17 47 82
# 18 35 87 10
# 20 04 82 47 65
# 19 01 23 75 03 34
# 88 02 77 73 07 63 67
# 99 65 04 28 06 16 70 92
# 41 41 26 56 83 40 80 70 33
# 41 48 72 33 47 32 37 16 94 29
# 53 71 44 65 25 43 91 52 97 51 14
# 70 11 33 28 77 73 17 78 39 68 17 57
# 91 71 52 38 17 14 91 43 58 50 27 29 48
# 63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
#
# NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)