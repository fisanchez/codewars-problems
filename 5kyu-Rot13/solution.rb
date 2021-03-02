require 'rspec'
require 'pry-byebug'

LETTERS = 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz'.split('')
UPPER = 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz'.upcase.split('')

def rot13(string)
  string.split('').inject('') do |str, char|
    current_index = LETTERS.find_index(char) || UPPER.find_index(char)
    if char.length == 0
      str += ' '
    elsif current_index.nil?
      str += char
    else
      str += LETTERS[current_index + 13] if LETTERS.find_index(char)
      str += UPPER[current_index + 13] if UPPER.find_index(char)
    end
    str
  end
end

describe 'rot13' do
  it 'returns grfg' do
    expect(rot13('test')).to eq('grfg')
  end
  # Testing upper case
  it 'returns Grfg' do
    expect(rot13('Test')).to eq('Grfg')
  end
  it 'returns ' do
    expect(rot13('CodeWArS$ esge@')).to eq('PbqrJNeF$ rftr@')
  end
end
RSpec::Core::Runner.run([$__FILE__])
