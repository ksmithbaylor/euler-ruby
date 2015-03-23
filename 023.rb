# Problem started Wednesday, December 19 at 3:18 AM

start = Time.now
##############################################################
####################### Put code here ########################
##############################################################

abundants = []
summables = []

def is_abundant? n  
  sum = 1  
  (2..Math.sqrt(n)).each do |i|  
    if n % i == 0  
      result = n / i  
      sum += result unless result == i  
      sum += i  
    end  
  end  
  return sum > n
end

total = 0

(1..28123).each do |i|
  if is_abundant? i
    abundants << i
    abundants.each do |ab|
      temp = ab + abundants.last
      summables << temp unless summables.include? temp
    end
  end
end

(1..28123).each do |i|
  total += i unless summables.include? i
end

puts total


##############################################################
####################### End problem code #####################
##############################################################
puts "It took " + ((Time.now - start) * 1000).to_s + " ms."


###### RESULTS: ######
=begin



=end
######################

# Problem:
#
