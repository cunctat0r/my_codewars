class Primes
  def self.first(num)
    @hh = (2..20*num).to_a
    res = []
    num_of_prime = 1
    while res.length < num
      res << self.sieve
    end
    res
  end

  def self.sieve
    base = @hh.first
    @hh.delete_if { |value| value % base == 0}
    base
  end
end