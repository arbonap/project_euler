# Project Euler Problem 1: multiples of 3 and 5

# If we list all the natural numbers below
# 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def factors num
  (1...num).select do |i|
     i % 3 == 0 || i % 5 == 0
  end.reduce(&:+)
end

puts factors(10) #answer is 23
puts factors(1000) #answer is 233168
