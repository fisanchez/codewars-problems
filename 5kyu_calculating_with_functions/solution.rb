require 'rspec'

def zero
  0
end

def one
  1
end

describe 'Calculating with Functions' do
  describe '.zero' do
    it 'should equal 0' do
      expect(zero).to eq(0)
    end
  end
  describe '.one' do
    it 'should equal 1' do
      expect(one).to eq(1)
    end
    it 'should accept accept a block' do
    end
  end
  describe '.two' do
  end
  describe '.three' do
  end
  describe '.four' do
  end
  describe '.times' do
  end
end

RSpec::Core::Runner.run([$__FILE__])
