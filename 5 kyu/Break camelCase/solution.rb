def solution(string)
  string.gsub(/[A-Z]/, ' \0')
end