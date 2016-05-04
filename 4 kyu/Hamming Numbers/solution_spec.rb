require_relative 'solution'

describe Solution do
  it 'hamming(1) should be 1' do  
    expect(Solution.hamming(1)).to eq 1
  end

  it 'hamming(2) should be 2' do  
    expect(Solution.hamming(2)).to eq 2
  end

  it 'hamming(3) should be 3' do  
    expect(Solution.hamming(3)).to eq 3
  end

  it 'hamming(4) should be 4' do
    expect(Solution.hamming(4)).to eq 4
  end

  it 'hamming(5) should be 5' do
    expect(Solution.hamming(5)).to eq 5
  end

  it 'hamming(6) should be 6' do
    expect(Solution.hamming(6)).to eq 6
  end

  it 'hamming(7) should be 8' do  
    expect(Solution.hamming(7)).to eq 8
  end

  it 'hamming(8) should be 9' do  
    expect(Solution.hamming(8)).to eq 9
  end

  it 'hamming(9) should be 10' do  
    expect(Solution.hamming(9)).to eq 10
  end

  it 'hamming(14) should be 20' do  
    expect(Solution.hamming(14)).to eq 20
  end

  it 'hamming(17) should be 27' do  
    expect(Solution.hamming(17)).to eq 27
  end

  it 'hamming(18) should be 30' do  
    expect(Solution.hamming(18)).to eq 30
  end

  it 'hamming(19) should be 32' do  
    expect(Solution.hamming(19)).to eq 32
  end

  it 'hamming(26) should be 64' do  
    expect(Solution.hamming(27)).to eq 64
  end
  
  it 'hamming(100) should be 1600' do  
     expect(Solution.hamming(101)).to eq 1600
  end

end