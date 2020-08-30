# Max Subarray Sum
# https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/ruby

require 'pry-byebug'

def max_sequence(array, index_start=0, index_end=0, high=0)

  return high if index_end > 0 && array[index_end].nil?

  binding.pry
  sum = array[index_start] + array[index_start + 1]
  if sum > high
    high = sum
    max_sequence(array, index_start + 1, high)
  end
    max_sequence(array, index_start + 1, high)
end

# Tests
max_sequence([-1, -4, -2, -9, -22]) == 0
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
max_sequence([11]) == 11
