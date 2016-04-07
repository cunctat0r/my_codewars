def find_even_index(arr)
  return 0 if arr.uniq.length == 1
  arr.each_with_object([]).with_index do |(_, obj), index|
    lower = arr[0...index].reduce(:+) || 0
    higher = arr[index + 1..-1].reduce(:+) || 0
    obj << index if lower == higher
  end.first || -1
end
