# Fluent calculator

require 'rspec'

NUMBERS = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8,
  nine: 9
}.freeze

OPERATORS = {
  plus: :+,
  minus: :-,
  times: :*,
  divided_by: :/
}.freeze

class Calc
  attr_accessor :value, :operator

  def initialize
    @value = 0
    @operator
  end

  # When you send a message to an object, the object executes the first method
  # it finds. If it fails, it raise a NoMethodError unless you specified
  # a method_missing method.
  #
  def method_missing(method_name)
    if @operator.nil?
      if OPERATORS.keys.include? method_name
        @operator = OPERATORS[method_name]
      else
        @value = NUMBERS[method_name]
      end
    else
      @value = @value.send(@operator, NUMBERS[method_name])
      return @value
    end
    self
  end
end

describe Calc do
  it 'returns the correct value to each method' do
    NUMBERS.each do |number, int|
      expect(eval("Calc.new.#{number}")).to eq(int)
    end
  end
  it 'returns 9' do
    expect(Calc.new.four.plus.five).to eq(9)
  end
end
RSpec::Core::Runner.run([$__FILE__])
