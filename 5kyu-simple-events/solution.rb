require 'rspec'

class Event
  def subscribe; end

  def unsubscribe; end

  def emit; end
end

describe Event do
  let(:event) { Event.new }
  context '.subscribe' do
    it 'should exist' do
      event.respond_to? :subscribe
    end
  end
  context '.unsubscribe' do
    it 'should exist' do
      event.respond_to? :unsubscribe
    end
  end
  context '.emit' do
    it 'should exist' do
      event.respond_to? :emit
    end
  end
end
RSpec::Core::Runner.run([$__FILE__])
