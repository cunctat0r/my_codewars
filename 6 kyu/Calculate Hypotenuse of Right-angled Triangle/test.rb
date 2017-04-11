def calculateHypotenuse(a,b)
  raise TypeError unless a.is_a? Numeric
  raise TypeError unless b.is_a? Numeric
  raise TypeError if a * b <= 0
  return (Math.sqrt(a**2 + b**2)).round(3)
end