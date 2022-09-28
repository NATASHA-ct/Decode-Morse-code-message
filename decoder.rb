def decode_char(char)
  my_obj_morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  my_obj_morse[char]
end

def decode_word(word)
  my_string = ''
  word.split.each do |char|
    my_string += decode_char(char)
  end
  my_string
end

def decode_sentence(sentence)
  my_sentence = ''
  sentence.split('   ').each { |char| my_sentence += "#{decode_word(char)} " }
  my_sentence
end

puts decode_char('.-')
puts decode_sentence('-- -.--')
puts decode_sentence('-- -.--   -. .- -- .')
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
