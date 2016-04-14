class Solution
  def initialize
  end

  def nbr_of_laps(x, y)
    gcd = gcd(x, y)
    lcm = x * y / gcd
    a = lcm / x
    b = lcm / y
    [a, b]
  end

  def gcd(x, y)
    modulo = x % y
    modulo.zero? ? y : gcd(y, modulo)    
  end
end