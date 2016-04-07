def longest_consec(strarr, k)
  return '' if strarr.empty? || k <= 0 || k > strarr.length 
  strarr
    .each_cons(k)
    .collect { |arr| arr.reduce(:+) }
    .group_by(&:size)
    .max
    .last
    .first
end
