def decodeMorse(morseCode)  
  morseCode.split('   ').each_with_object([]) do |morse_word, morse_phrase|
    morse_phrase << morse_word.split(' ').each_with_object('') do |morse_char, word|      
      word << MORSE_CODE[morse_char]
    end
  end.join(' ').strip
end