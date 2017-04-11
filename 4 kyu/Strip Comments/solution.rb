def solution(input, markers)
  input.split("\n").each do |str|
    a_regex = /((#{markers.map{ |x| "\\#{x}" }.join('|')}).*)$/
    str.gsub!(a_regex, '')
    str.strip!
  end.join("\n")
end