require 'rspec'

MORSE_CODE = {".-"=>"A", "-..."=>"B", "-.-."=>"C", "-.."=>"D", "."=>"E", "..-."=>"F", "--."=>"G", "...."=>"H", ".."=>"I", ".---"=>"J", "-.-"=>"K", ".-.."=>"L", "--"=>"M", "-."=>"N", "---"=>"O", ".--."=>"P", "--.-"=>"Q", ".-."=>"R", "..."=>"S", "-"=>"T", "..-"=>"U", "...-"=>"V", ".--"=>"W", "-..-"=>"X", "-.--"=>"Y", "--.."=>"Z", "-----"=>"0", ".----"=>"1", "..---"=>"2", "...--"=>"3", "....-"=>"4", "....."=>"5", "-...."=>"6", "--..."=>"7", "---.."=>"8", "----."=>"9", ".-.-.-"=>".", "--..--"=>",", "..--.."=>"?", ".----."=>"'", "-.-.--"=>"!", "-..-."=>"/", "-.--."=>"(", "-.--.-"=>")", ".-..."=>"&", "---..."=>"=>", "-.-.-."=>";", "-...-"=>"=", ".-.-."=>"+", "-....-"=>"-", "..--.-"=>"_", ".-..-."=>"\"", "...-..-"=>"$", ".--.-."=>"@", "...---..."=>"SOS"}

# My solution
#
# @params morseCode String - A morsecode 
def decodeMorse(morseCode)
  translated_sentence = []
  morse_words = morseCode.split('  ')
  morse_words.each do |morse_word|
    translated_sentence << morse_word.split.inject([]) do |translated_word, morse_word|
      translated_word << MORSE_CODE[morse_word]
    end
  end
  result = translated_sentence.inject('') do |sentence, word|
    sentence += "#{word.join} "
  end
  return result.strip
end

describe 'Decode the morse code' do 
  it 'should correctly translate morse code' do 
    expect(decodeMorse('.... . -.--   .--- ..- -.. .')).to eq('HEY JUDE')
  end
end

RSpec::Core::Runner.run([$__FILE__])

