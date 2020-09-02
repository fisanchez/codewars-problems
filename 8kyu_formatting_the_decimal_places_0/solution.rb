require 'rspec'

def two_decimal_places(n)
  n.round(2)
end

describe 'Formatting the decimal place' do 
  it 'should round to the nearest hundreth' do 
    expect(two_decimal_places(4.659725356)).to eq(4.66)
  end
end

RSpec::Core::Runner.run([$__FILE__])
