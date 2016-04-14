require_relative 'solution'

describe Primes do
  it 'first 5 primes' do
    expect(Primes.first(5)).to eq [2, 3, 5, 7, 11]
  end

  it '100th prime' do
    expect(Primes.first(100).last).to eq 541
  end

  it '50000th prime' do
    expect(Primes.first(50000).last).to eq 611953
  end

end