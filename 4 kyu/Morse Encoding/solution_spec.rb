require_relative 'solution'

describe Morse do
  it 'decode EEEEEEEIE' do  
    expect(Morse.decode([-2004318070,536870912])).to eq 'EEEEEEEIE'
  end

  it 'decode HELLO WORLD' do  
    expect(Morse.decode([-1440552402, -1547992901, -1896993141, -1461059584])).to eq 'HELLO WORLD'
  end

  it 'decode CODEWARS' do  
    expect(Morse.decode([-341591154, -1573985566, -391643136])).to eq 'CODEWARS'
  end

  it 'decode symbols' do  
    expect(Morse.decode([-340120646, -1896961862, -343167346, -1146224640])).to eq '(?:.+)'
  end

  it 'encode HELLO WORLD' do  
    expect(Morse.encode('HELLO WORLD')).to eq [-1440552402,-1547992901,-1896993141,-1461059584]
  end

  it 'encode EEEEEEEIE' do  
    expect(Morse.encode('EEEEEEEIE')).to eq [-2004318070,536870912]
  end

end