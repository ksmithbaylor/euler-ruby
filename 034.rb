# Completes in about 136 seconds
puts (3..9999999).find_all{|i|i==i.to_s.split('').map(&:to_i).map{|d|[1,1,2,6,24,120,720,5040,40320,362880][d]}.inject(:+)}.inject(:+)