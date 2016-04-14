require_relative 'solution'

describe Solution do 
  before do
    @solution = Solution.new
  end

  it '5 and 3' do
    expect(@solution.nbr_of_laps(5, 3)).to eq [3, 5]
  end

  it '4 and 6' do
    expect(@solution.nbr_of_laps(4, 6)).to eq [3, 2]
  end  

  it '5 and 5' do
    expect(@solution.nbr_of_laps(5, 5)).to eq [1, 1]
  end
  
end