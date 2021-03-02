require 'rspec'
require 'pry-byebug'

##
# Programatic use of the equation: x2 - 4 * y2 = n
# @param n [Integer]
# @return [Array] if no solution exists
# @return [<<Integer, Integer>>] An array of tuples
def sol_equa(n)
  n
end

##
# Greatest Common Divisor
# @param num [Integer]
# @return [Integer]
# @example Youtube video
#   https://www.youtube.com/watch?v=cOwyHTiW4KE
def gcd(num1, num2)
  # gcd(a,b)
  puts "Checking [#{num1}, #{num2}]"
  puts "**** GCD is #{num2}" if (num1 % num2).zero?
  return num2 if (num1 % num2).zero?

  # a = bq+r
  # gcd(dividend, divisor)
  # num1 = num2 * (num1 / num2) + (num1 % num2)
  gcd(num2, (num1 % num2))
end

describe '#sol_equa' do
  it 'returns param' do
    expect(sol_equa('test')).to eq('test')
  end
end

describe '#gcd' do
  it 'should return correct least common denominator integer' do
    expect(gcd(2322, 654)).to eq(6)
    expect(gcd(1, 2)).to eq(1)
  end
end

RSpec::Core::Runner.run([$__FILE__])
