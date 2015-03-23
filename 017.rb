# Problem started Monday, May 14 at 3:37 AM
# Ended 6:04 PM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

class Integer
  @@numbers = {
    1    => "one",
    2    => "two",
    3    => "three",
    4    => "four",
    5    => "five",
    6    => "six",
    7    => "seven",
    8    => "eight",
    9    => "nine",
    10   => "ten",
    11   => "eleven",
    12   => "twelve",
    13   => "thirteen",
    14   => "fourteen",
    15   => "fifteen",
    16   => "sixteen",
    17   => "seventeen",
    18   => "eighteen",
    19   => "nineteen",
    20   => "twenty",
    30   => "thirty",
    40   => "forty",
    50   => "fifty",
    60   => "sixty",
    70   => "seventy",
    80   => "eighty",
    90   => "ninety",
    100  => "hundred",
    1000 => "thousand"
  }

  def spelled
    if self < 21 and self > 0
      @@numbers[self]
    elsif self > 20 and self < 100
      if self % 10 == 0
        @@numbers[self]
      else
        @@numbers[10 * (self / 10).floor] + @@numbers[self % 10]
      end
    elsif self > 99 and self < 1000
      if self % 100 == 0
        @@numbers[self / 100] + "hundred"
      else
        @@numbers[self / 100] + "hundredand" + (self % 100).spelled
      end
    elsif self == 1000
      "onethousand"
    end
  end
end

answer = ""



(1..1000).each do |x|
  answer += x.spelled
end

puts (1..1000).map(&:spelled).map(&:length).to_s

puts answer.length

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

21124
It took 5.133 ms.

=end
######################

# Problem:
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
