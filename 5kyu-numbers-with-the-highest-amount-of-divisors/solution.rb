require 'rspec'
require 'pry-byebug'

class Divisor
  def self.proc_arrInt(list)
    num_count = list_count(list)
    prime_count = prime_count(list)
    divisor_count = highest_divisors(list)
    [num_count, prime_count, divisor_count]
  end

  def self.list_count(arr)
    arr.count
  end

  def self.prime_count(arr)
    arr.inject(0) do |sum, num|
      sum += 1 if is_prime?(num)
      sum
    end
  end

  # Prime numbers are numbers that aren't a product of two smaller numbers
  #
  def self.is_prime?(number)
    (2..(number - 1)).each do |n|
      # Return false if the number is perfectly divisable by another number
      return false if (number % n).zero?
    end
    true
  end

  def self.highest_divisors(arr)
    pair_list = arr.inject([]) do |pairs, num|
      pairs << { num: num, count: divisor_count(num) }
    end
    # Sorting low to high
    pair_list.sort_by! { |a| a[:count] }
    answer = pair_list.last
    [answer[:count], [answer[:num]]]
  end

  def self.divisor_count(number)
    divisors = []
    (1..number).each do |n|
      divisors << n if (number % n).zero?
    end
    divisors.count
  end
end

describe 'Divisor' do
  let(:arr1) do
    [66, 36, 49, 40, 73, 12, 77, 78, 76, 8, 50,
     20, 85, 22, 24, 68, 26, 59, 92, 93, 30]
  end

  it 'returns array of correct number of number' do
    expect(Divisor.proc_arrInt(arr1)).to eq([21, 2, [9, [36]]])
  end
  describe '.list_count' do
    it 'returns correct number of numbers received' do
      expect(Divisor.list_count(arr1)).to eq(21)
    end
  end
  describe '.is_prime?' do
    it 'returns true' do
      expect(Divisor.is_prime?(7)).to eq(true)
    end
    it 'returns false' do
      expect(Divisor.is_prime?(66)).to eq(false)
    end
  end
  describe '.prime_count' do
    it 'returns a count of two' do
      expect(Divisor.prime_count(arr1)).to eq(2)
    end
  end
  describe '.divisor_count' do
    it 'returns 9' do
      expect(Divisor.divisor_count(36)).to eq(9)
    end
  end
  describe '.highest_divisors' do
    it 'returns 9 divisors from 36]' do
      expect(Divisor.highest_divisors(arr1)).to eq([9, [36]])
    end
  end
end

RSpec::Core::Runner.run([$__FILE__])
