<<~COMMENTARY
   This one was a bit tricky, as it involes the beginning of meta programming with ruby.
   
   There were 4 main parts in this question.
   
   1. Dynamically creating 1337 classes with different names
   2. Create an array with these unique classes
   3. Each class needs to have 1 unique public method and 1 class method
   4. Each method needs to return a unique result

  eval is the key method being used. eval accepts a string and will run it as it were regular ruby code.
  I just stuck this eval method in a loop and used the index to uniqify each class, method, and return

COMMENTARY

require 'rspec'

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
