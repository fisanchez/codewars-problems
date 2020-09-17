require 'rspec'

# Emulating a compass with directions north, south, east, west
# Each have x, y values
# @params direction String - accepts first letter of a coordinate'
# @returns Array - coordinate of direction you move in
def walk(direction)
  # x, y values
  legend = {
    n: [1, 0],
    s: [-1, 0],
    e: [0, 1],
    w: [0, -1]
  }
  legend[direction.to_sym]
end

# Accepts a walk path and returns whether or not you returned to start
# @params path Array - A walk path
# @returns Boolean - whether or not you returned to start location [0,0]
def is_valid_walk(path)
  return false if path.count == 1 || path.count != 10

  compass = [0, 0]
  path.first(10).each do |direction|
    coordinates = walk(direction)
    x = coordinates[0]
    y = coordinates[1]
    compass[0] += x
    compass[1] += y
  end
  compass == [0, 0]
end

# This solution wants there to be an equal pairs of north, south and east, west
# If there are then you're back to where you started from
def muchSimplerSolution(walk)
  walk.count('w') == walk.count('e') and
    walk.count('n') == walk.count('s') and
    walk.count == 10
end

describe 'Take a 10 minute walk' do
  describe '.walk' do
    it 'should return x,y array' do
      expect(walk('n')).to be_a(Array)
    end
  end
  describe '.is_valid_walk' do
    it 'should return true to starting point' do
      expect(is_valid_walk(%w[n s]))
    end
    it 'should return true' do
      expect(is_valid_walk(%w[n s n s n s n s n s])).to eq(true)
    end
    it 'should return false' do
      expect(is_valid_walk(%w[n s n])).to eq(false)
      expect(is_valid_walk(%w[w])).to eq(false)
    end
    context 'walk takes greater than 10 minutes to return to [0,0]' do
      it 'should return false' do
        expect(is_valid_walk(%w[w e w e w e w e w e w e])).to eq(false)
      end
    end
  end
end

RSpec::Core::Runner.run([$__FILE__])
