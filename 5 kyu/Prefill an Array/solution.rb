class Solution
  def initialize
  end

  def prefill(n = 0, v)
    return [] if n == 0
    raise TypeError, "#{n} is invalid" if n.nil?
    raise TypeError, "#{n} is invalid" unless (n.is_a?(Fixnum) || n.is_a?(String))
    if n.is_a?(String)
      raise TypeError, "#{n} is invalid" unless n =~ /^\d+$/
      n = n.to_i
    end
    raise TypeError, "#{n} is invalid" if n < 0
    Array.new(n.to_i, v)
  end
end