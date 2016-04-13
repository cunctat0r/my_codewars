def validBraces(braces)  
  values = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
    }
  braces.chars.each_with_object([]) do |brace, braces_arr|
    brace == values[braces_arr.last] ? braces_arr.pop : braces_arr << brace    
  end.empty?
end