MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', 'V' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2',
  '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
  '--...' => '7', '---..' => '8', '----.' => '9',
  ' ' => ' '
}.freeze

# Decode character
def decode_char(string)
  MORSE_CODE[string]
end

puts decode_char '.-'


# Decode word
def decode_word(word)
  splited_words = word.split
  result = ''

  splited_words.each do |w|
    result += MORSE_CODE[w].to_s
  end

  result
end

puts decode_word('-- -.--')

# Decode
def decode(message)
  words = message.split('  ')
  words.map { |word| decode_word(word) }.join('   ')
end


puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
