require 'rspec'

def is_square?(number)
  return false if number < 0

  (Math.sqrt(number) % 1).zero?
end

describe '.is_square?' do
  it 'should return true' do
    expect(is_square?(144)).to eq(true)
  end
end

RSpec::Core::Runner.run([$__FILE__])
