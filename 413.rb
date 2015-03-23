N = 10 ** 3

def split_word(s)
  0.upto(s.length - 1).flat_map do |start| 
    1.upto(s.length - start).map do |length| 
      s[start, length]
    end
  end.uniq
end

total = 0

(1..N).each do |x|
  d = x.to_s.length
  substrings = split_word x.to_s
  children = substrings.keep_if do |y|
    y % d == 0
  end.
  total += 1 if children.length == 1
end

puts total
