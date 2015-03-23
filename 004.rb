class Fixnum
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

max = 0

(100..999).each do |a|
  (100..999).each do |b|
    max = (a*b) if (a*b).palindrome? && (a*b) > max
  end
end

puts max
