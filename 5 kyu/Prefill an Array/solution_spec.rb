require_relative 'solution'

describe Solution do 
  before do
    @solution = Solution.new
  end

  it 'prefill with ones' do
    expect(@solution.prefill(3, 1)).to eq [1,1,1]
  end

  it 'prefill with strings' do
    expect(@solution.prefill(2,'abc')).to eq ['abc','abc']
  end

  it 'prefill using string' do
    expect(@solution.prefill('1',1)).to eq [1]
  end  

  it 'prefill stacked' do
    expect(@solution.prefill(3, @solution.prefill(2,'2d'))).to eq [['2d','2d'],['2d','2d'],['2d','2d']]
  end    
  
end