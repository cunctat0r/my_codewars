module Converter
  def self.to_ascii(hex)    
    hex.upcase!.chars.each_slice(2).with_object('') do |slice, res|      
      res << slice.join.to_i(16)
    end
  end

  def self.to_hex(ascii)
    ascii.chars.each_with_object('') do |char, res|
      res << char.ord.to_s(16)
    end
  end
end