# bad solution, but it works
def solution(list)
  range = []
  test = list.each_with_object([]) do |num, res|
    if range.empty?
      range << num
    elsif num - range.last == 1
      range << num
    else   
      if range.size == 1
        res << range.first.to_s
      elsif range.size == 2
        res << range.first.to_s
        res << range.last.to_s
      else
        res << "#{range.first}-#{range.last}"
      end
      range.clear
      range << num
    end    
  end << "#{range.first}-#{range.last}"
  test.join(',')
end