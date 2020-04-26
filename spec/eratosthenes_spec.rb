require File.expand_path(File.dirname(__FILE__) + '/../eratosthenes')

describe Eratosthenes do
  context 'n = 30' do
    it { expect(Eratosthenes.sieve(30)).to eq '2, 3, 5, 7, 11, 13, 17, 19, 23, 29' }
  end
  context 'n = 120' do
    it { expect(Eratosthenes.sieve(120)).to eq '2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113' }
  end
end
