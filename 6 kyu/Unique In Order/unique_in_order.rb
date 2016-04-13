def unique_in_order(iterable)
  iterable = iterable.chars.to_a if iterable.is_a?(String) 
  iterable.each_with_object([]) do |item, res|
    res << item unless item == res.last    
  end
end