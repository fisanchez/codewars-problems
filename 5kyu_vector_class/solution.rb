require 'rspec'

class Vector
end

describe 'Vector class' do
  context 'Vector points' do
    it 'should get and set the x vector' do
      expect(Vector.new(1, 2, 3).x).to eq(1)
    end
    it 'should get and set the y vector' do
      expect(Vector.new(1, 2, 3).x).to eq(2)
    end
    it 'should get and set the z vector' do
      expect(Vector.new(1, 2, 3).x).to eq(3)
    end
  end
end

RSpec::Core::Runner.run([$__FILE__])
