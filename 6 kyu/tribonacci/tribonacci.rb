def tribonacci(signature,n)
  return [] if n == 0
  signature << signature[-1] + signature[-2] + signature[-3] while signature.length < n  
  signature[0, n]
end
