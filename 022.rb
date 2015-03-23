# Problem started Wednesday, May 16 at 2:35 PM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

names = File.new("022.txt", "r").gets.chop.reverse.chop.reverse.split('","').sort

total = 0

names.each_with_index do |name, index|
  val = 0
  name.each_char do |letter|
    val += letter[0].ord - 64
  end
  total += val * (index+1)
end

puts total

##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin

871198282
It took 31.782 ms.

=end
######################

# Problem:
#
