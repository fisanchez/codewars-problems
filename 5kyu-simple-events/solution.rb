require 'rspec'

class Event
  def self.subscribe; end

  def self.unsubscribe; end

  def self.emit; end
end

describe Event do
  context '.subscribe' do
    it 'should exist' do
      Event.method_defined? :subscribe
    end
  end
  context '.unsubscribe' do
    it 'should exist' do
      Event.method_defined? :unsubscribe
    end
  end
  context '.emit' do
    it 'should exist' do
      Event.method_defined? :emit
    end
  end
end
RSpec::Core::Runner.run([$__FILE__])
