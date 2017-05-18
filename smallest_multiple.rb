# Project Euler: Smallest multiple
# Problem 5
# 2520 is the smallest number that can be
# divided by each of the numbers from 1 to 10
# without any remainder.
#
# What is the smallest positive number
# that is evenly divisible by all of the
# numbers from 1 to 20?


def smallest_multiple
  (1..20).reduce(&:lcm)
end

puts smallest_multiple #answer is 232792560

def smallest_mult #this method is much slower than smallest_multiple method
  num = 20
    until (11..20).all?{ |i| num % i == 0 }
      num += 20
    end
  num
end

puts smallest_mult #answer is 232792560
