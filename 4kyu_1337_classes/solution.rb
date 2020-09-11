require 'rspec'
require 'pry-byebug'

def leet_classes
  classes = []
  0.upto(1336).each do |index|
    eval <<-CLASS
          class Klass_#{index}
            def self.unique_class_method_#{index}
              "c#{index}"
            end
            def unique_instance_method_#{index}
              "i{index}"
            end
          end
    CLASS
    classes << (eval "Klass_#{index}")
  end
  classes
end

describe '.leet_classes' do
  let(:klasses) { leet_classes }
  it 'should have every member in the array be a class' do
    expect(klasses.map(&:class).uniq).to eq([Class])
  end
  it 'should have unique class names' do
    expect(klasses.uniq.count).to eq(1337)
  end
end

RSpec::Core::Runner.run([$__FILE__])
