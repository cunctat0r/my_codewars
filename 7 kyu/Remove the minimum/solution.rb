def remove_smallest(numbers)
  return [] if numbers.empty?
  smallest = numbers.sort.first
  numbers.delete_at(numbers.index(smallest))
  numbers
end