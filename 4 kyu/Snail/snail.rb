def snail(array)
  res = []
  while !array.empty? do
    res << array.shift
    array = array.transpose.reverse
  end   
  res.flatten!
  res
end