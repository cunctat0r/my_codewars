def top_3_words(text)  
  res = text    
    .split(/[ ,.:!&@$%^\n\/]/)
    .lazy
    .each_with_object(Hash.new(0)) do |word, hash|
      word.to_s.downcase!
      hash[word] += 1 unless (word == '' || word == '\'')
    end
   arr = res.sort_by{|_, value| value}.reverse.to_h.keys
   return (arr.length > 3 ? arr[0..2] : arr)     
end