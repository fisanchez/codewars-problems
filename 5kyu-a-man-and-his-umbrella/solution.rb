# A Man and his Umbrella
#
# Task - Work out a minimum number of umrellas he needs to start with so he
# never gets wet
#
require 'rspec'

location_info = {
  home: 0,
  office: 0
}

def min_umbrellas(forecast)
  terms = %w[rainy thunderstorms]
  forecast.each_with_index do |weather, index|
  end
end

describe '.min_umbrella' do
  it 'should return object with location and umbrella count' do
    expect(location_info).to eq({ home: 0, office: 0 })
  end
  it 'should return 1' do
    expect(min_umbrellas(%w[rainy clear rainy cloudy])).to eq(2)
  end
end
RSpec::Core::Runner.run([$__FILE__])
