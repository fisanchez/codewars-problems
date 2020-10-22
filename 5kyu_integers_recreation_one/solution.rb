# First = number whose squared divisors is a square and then the sum of the
# squared divisors
#
# (1,250)
#
# Between 1 - 250
# Find all squared divisors that are squares
#
# Divisors of 42 are 1,2,3,6,7,14,21,42
# These divisor squared are: 1, 4, 9, 36, 49, 196, 441, 1764
# The sum of these divisors is 2500 which is a square! (50)
#

# For each number
# [] Find divisors
# Get the squared values of divisor
# Get the sum of squared divisors
# Return tupple if the sum is a perfect square
require 'rspec'
require 'pry-byebug'

def list_squared(start, finish)
  solution = []
  (start..finish).each do |number|
    squared_sum = squared_sum (divisors(number))
    solution << [number, squared_sum] if (Math.sqrt(squared_sum) % 2).zero? || number == 1
  end
  solution
end

def divisors(number)
  divs = []
  end_value = Math.sqrt(number)
  (1..end_value).each do |n|
    if (number % n).zero?
      if (number / n) == n
        divs << n
      else
        divs << n
        divs << number / n
      end
    end
  end
  divs.sort
end

def squared_sum(arr)
  arr.sum { |num| num**2 }
end

describe '.list_squared' do
  let(:divs) { divisors(42) }
  it 'finds all the divisors' do
    expect(divisors(42)).to eq(divs)
  end
  it 'gets the squared sum of an array of numbers' do
    expect(squared_sum(divs)).to eq(2500)
  end
  it 'returns correct tupple' do
    expect(list_squared(42, 250)).to eq([[42, 2500], [246, 84_100]])
    expect(list_squared(1, 250)).to eq([[1, 1], [42, 2500], [246, 84_100]])
  end
end

RSpec::Core::Runner.run([$__FILE__])
