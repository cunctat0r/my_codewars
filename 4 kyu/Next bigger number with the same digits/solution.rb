class Solution
# algorythm from https://code.google.com/codejam/contest/dashboard?c=186264#s=a&a=1
  def self.next_bigger(n)
    str = n.to_s.chars.to_a.map(&:to_i)
    return -1 if str == str.sort.reverse
    left = str
    right = []  
    begin
      right.unshift(left.pop)
    end until (left.last < right.first)
    left_swap = left.last
    right_swap = right.select{ |x| x > left_swap }.sort.first
    left[-1] = right_swap
    right[right.index(right_swap)] = left_swap  
    (left+right.sort).join.to_i  
  end
end