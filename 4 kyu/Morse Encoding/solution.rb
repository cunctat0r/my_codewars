class Morse
# Possible BUGS
@alpha={
  'A'=> '10111',
  'B'=> '111010101',
  'C'=> '11101011101',
  'D'=> '1110101',
  'E'=> '1',
  'F'=> '101011101',
  'G'=> '111011101',
  'H'=> '1010101',
  'I'=> '101',
  'J'=> '1011101110111',
  'K'=> '111010111',
  'L'=> '101110101',
  'M'=> '1110111',
  'N'=> '11101',
  'O'=> '11101110111',
  'P'=> '10111011101',
  'Q'=> '1110111010111',
  'R'=> '1011101',
  'S'=> '10101',
  'T'=> '111',
  'U'=> '1010111',
  'V'=> '101010111',
  'W'=> '101110111',
  'X'=> '11101010111',
  'Y'=> '1110101110111',
  'Z'=> '11101110101',
  '0'=> '1110111011101110111',
  '1'=> '10111011101110111',
  '2'=> '101011101110111',
  '3'=> '1010101110111',
  '4'=> '10101010111',
  '5'=> '101010101',
  '6'=> '11101010101',
  '7'=> '1110111010101',
  '8'=> '111011101110101',
  '9'=> '11101110111011101',
  '.'=> '10111010111010111',
  ','=> '1110111010101110111',
  '?'=> '101011101110101',
  "'"=> '1011101110111011101',
  '!'=> '1110101110101110111',
  '/'=> '1110101011101',
  '('=> '111010111011101',
  ')'=> '1110101110111010111',
  '&'=> '10111010101',
  ':'=> '11101110111010101',
  ';'=> '11101011101011101',
  '='=> '1110101010111',
  '+'=> '1011101011101',
  '-'=> '111010101010111',
  '_'=> '10101110111010111',
  '"'=> '101110101011101',
  '$'=> '10101011101010111',
  '@'=> '10111011101011101',
  ' '=> '0'}

  def self.encode(message)
    len = 32
    max_int = 2**len
    mid_int = 2**(len - 1)
    words = message.split(' ')
    encoded = words
      .map { |word| word.chars.map { |char| @alpha[char] }.join('000') }
      .join('0000000')
    encoded << '0'*(len - encoded.length % len) if encoded.length % len != 0
    encoded
      .chars
      .each_slice(len)
      .map { |slice| slice.join('').to_i(2) }
      .map { |x| (x >= mid_int) ? (x - max_int) : x }      
  end

  def self.decode(array)
    beta = @alpha.invert
    array
      .each_with_object([]) do |code, res|
        twos_compliment = sprintf("%032b", code)        
        twos_compliment = twos_compliment[2..-1] if twos_compliment[0] == '.'
        twos_compliment = "#{'1'*(32 - twos_compliment.length)}#{twos_compliment}" if twos_compliment.length < 32
        res << twos_compliment
      end
      .join('')
      .split('0000000')
      .map { |word| word.split('000').map{|char| beta[char]}.join('')}
      .join(' ')
      .strip
  end
  
end