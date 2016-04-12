def dirReduc(arr)
  directions = ["NORTH", "EAST", "SOUTH", "WEST"]
  arr.each_with_object([]) do |direction, path|
    if path.any? &&
      path.last != direction &&
      (directions.index(path.last) % 2) == (directions.index(direction) % 2)
      path.pop
     else
       path << direction       
     end        
  end
end