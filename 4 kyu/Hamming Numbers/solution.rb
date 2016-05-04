class Solution

  def self.hamming(n)
    hamming = Enumerator.new do |yielder|
      next_ham = 1
      queues = [[ 2, []], [3, []], [5, []] ]
      loop do
        yielder << next_ham
     
        queues.each {|m,queue| queue << next_ham * m}
        next_ham = queues.collect{|m,queue| queue.first}.min
        queues.each {|m,queue| queue.shift if queue.first==next_ham}
      end
    end
    
    hamming.each.with_index(1) do |ham, idx|
      return ham if idx == n  
    end
  end  
end