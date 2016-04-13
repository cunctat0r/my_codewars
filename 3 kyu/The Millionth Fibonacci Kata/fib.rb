def fib(n)
  if n >= 0
    fib_iter(1, 0, 0, 1, n)
  else    
    n = n.abs
    (-1)**((n - 1) % 2) * fib_iter(1, 0, 0, 1, n)
  end
end

def fib_iter(a, b, p, q, count)
    if count == 0
      b
    elsif count % 2 == 0
      fib_iter(a, b, q**2 + p**2, q**2 + 2 * p * q, count / 2)
    else
      fib_iter(b * q + a * q + a * p, b * p + a * q, p, q, count - 1)
    end
end