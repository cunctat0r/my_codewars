class Primes
def self.first(num)
    @hh = (2..20*num).each_with_object({}) { |num, hash| hash[num] = num }
    res = {}
    num_of_prime = 1
    while num_of_prime <= num
      res[num_of_prime] = self.sieve
      num_of_prime += 1
    end
    res.values
  end

  def self.sieve
    base = @hh.keys.first
    @hh.delete_if { |key, value| key % base == 0}
    base
  end
end