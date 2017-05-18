# Project Euler Problem 3: Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of
# the number 600851475143 ?

def prime?(num) #prime helper method
  return false if num < 2

  for i in (2...num)
    return false if num % i == 0
  end
  true
end


def largest_prime_factor(num=600_851_475_143)
  list = []
  product_sum = 1

  x = 2 #we begin with the first prime number

  while product_sum < num
    if num % x == 0 && prime?(x) #check if num is a factor && if prime
      list.push(x)
      product_sum *= x
    end
    x += 1
  end
  list.max #find the max number of our list of primes
end
puts largest_prime_factor # answer is 6857
