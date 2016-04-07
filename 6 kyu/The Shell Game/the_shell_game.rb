def find_the_ball start, swaps
  swaps.each_with_object([]) do |swap, path|  
    path << swap[swap.index(path.last) - 1] if path.any? && swap.include?(path.last)
    path << swap[swap.index(start) - 1] if path.empty? && swap.include?(start)
  end.last || start  
end

swaps = [[0, 1], [1, 2], [1, 0]]
puts find_the_ball(0, swaps)

swaps = [[0, 1]]
puts find_the_ball(1, swaps)