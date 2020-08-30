# Simple fraction to mixed number converter - 5 Kyu
# https://www.codewars.com/kata/556b85b433fb5e899200003f/train/ruby
#

def solution(string)
  numerator, denomerator = string.split('/').map(&:to_i)

  # Gets the first whole number
  num = Rational(numerator/denomerator).truncate
  rem = numerator % denomerator

  return sprintf("%s %s/%s", num, rem, denomerator) if rem != 0
  num.to_s
end

# Tests
puts solution ('42/9')
puts solution('42/9') == '4 2/3'
puts solution('6/3') == '2'
puts solution('-10/7') == '-1 3/7'
puts solution('-22/-7') == '3 1/7'

