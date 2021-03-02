require 'rspec'
require 'pry-byebug'

SCROLL = {
  a: ['4', '@'],
  b: ['|3', '8'],
  d: ['|)', 'o|'],
  e: ['3'],
  f: ['|:'],
  g: %w[9 6],
  h: ['|-|', ']-[', '}-{', '(-)', ')-(', '#'],
  i: ['1', '!', ']['],
  j: ['_|'],
  k: ['|<', '|{'],
  l: ['|_'],
  n: ['|\|'],
  o: ['0'],
  p: ['|2', '|D'],
  q: ['(,)'],
  r: ['|Z', '|?'],
  s: ['5', '$'],
  t: ['+', '7'],
  v: ['|/', '\/'],
  w: ['\^/', '//'],
  x: ['><', '}{'],
  y: ['`/'],
  z: ['(\)']
}.freeze

# Takes a string and returns a translated leetspeak
#
def translate(sentence, _prev = nil)
  # inject with index
  translation = ''
  split_sentence = sentence.split('')
  split_sentence.each_with_index do |_char, _index|
    # Last character added
    prev_translation = translation[-1]
    translation += translate_word(_char, prev_translation)
  end
  translation
end

def translate_word(word, _prev = nil)
  SCROLL[word.to_sym].first if _prev.nil?
end

def to_leet; end
describe '.to_leet' do
  describe '.translate' do
    it 'returns 4' do
      expect(translate('a')).to eq('4')
    end
    # Must not repeat the same key consecutively
    it 'returns 4@4@' do
      expect(translate('aaaa')).to eq('4@4@')
    end
  end
  describe 'scrolls content' do
    it 'should contain 23 keys' do
      expect(SCROLL.count).to eq(23)
    end
  end
end

RSpec::Core::Runner.run([$__FILE__], '--format documentation')
