def in_sphere?(coords, radius)  
  coords.empty? ? true : coords.map { |x| x**2 }.reduce(:+) <= radius**2
end
