# Project Euler: Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways.
# The largest palindrome made from the
# product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the
# product of two 3-digit numbers.

def palindrome?(num)
  num == num.to_s.reverse.to_i
end

def array_of_nums()
  output = []
  list = 111.upto(999)
    list.each do |x|
      list.each do |y|
        product = x * y
        output.push(product) if palindrome?(product)
      end
    end
  output.max
end

puts array_of_nums() # answer is 906609
