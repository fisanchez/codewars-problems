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
    high_div_count = pair_list.last[:count]

    highest_counts = pair_list.each_with_object([]) do |pair, arr|
      arr << pair[:num] if pair[:count] == high_div_count
    end

    [pair_list.last[:count], highest_counts.sort]
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
  let(:arr2) do
    [5, 396, 397, 145, 274, 286, 159, 422, 169, 44, 303,
     433, 310, 450, 324, 326, 91, 226, 229, 233, 106, 237, 499, 126]
  end

  it 'returns array of correct number of number' do
    expect(Divisor.proc_arrInt(arr1)).to eq([21, 2, [9, [36]]])
    expect(Divisor.proc_arrInt(arr2)).to eq([24, 6, [18, [396, 450]]])
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
    it 'returns 9 divisors from 36' do
      expect(Divisor.highest_divisors(arr1)).to eq([9, [36]])
    end
    it 'returns divisor count of 18 with two tied numbers: 396 and 450' do
      expect(Divisor.highest_divisors(arr2)).to eq([18, [396, 450]])
    end
  end
end

RSpec::Core::Runner.run([$__FILE__])
