# frozen_string_literal: true

morse_hash = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
  ' ' => ' ' # Space
}

incognit = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

def decode(incognit, hash)
  words = incognit.split('   ')
  result = []
  words.each do |word|
    word.split(' ').each do |letter|
      valor = hash[letter]
      result.push(valor)
    end
    result.push(' ')
  end
  # final_string = result.join
  puts result.join
end

decode(incognit, morse_hash)
