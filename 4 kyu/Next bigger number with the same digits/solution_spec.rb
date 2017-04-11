require_relative 'solution'

describe Solution do
  it 'two digits' do  
    expect(Solution.next_bigger(12)).to eq 21
  end

  it 'three digits' do  
    expect(Solution.next_bigger(253)).to eq 325
  end

  it 'big number' do  
    expect(Solution.next_bigger(85925734838)).to eq 85925734883
  end

  it 'zero' do  
    expect(Solution.next_bigger(0)).to eq -1
  end  

  it 'failing' do  
    expect(Solution.next_bigger(997765222110)).to eq -1
  end

end