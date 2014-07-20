require 'prime'
require File.join(File.dirname(__FILE__), '..', 'prime_factors_provider')

describe PrimeFactorsProvider do

  before(:each) { @provider = PrimeFactorsProvider.new }

  it 'returns empty list for 0' do
    primes = @provider.prime_factors 0
    expect(primes).to be_empty
  end

  it 'returns empty list for 1' do
    primes = @provider.prime_factors 1
    expect(primes).to be_empty
  end

  it 'returns list with 2 for 2' do
    primes = @provider.prime_factors 2
    expect(primes).to contain_exactly 2
  end

  it 'returns list with 3 for 3' do
    primes = @provider.prime_factors 3
    expect(primes).to contain_exactly 3
  end

  it 'returns list with 2, 2 for 4' do
    primes = @provider.prime_factors 4
    expect(primes).to contain_exactly 2, 2
  end

  it 'returns list with 5 for 5' do
    primes = @provider.prime_factors 5
    expect(primes).to contain_exactly 5
  end

  it 'returns list with 2, 3 for 6' do
    primes = @provider.prime_factors 6
    expect(primes).to contain_exactly 2, 3
  end

  it 'returns list with 3, 3 for 9' do
    primes = @provider.prime_factors 9
    expect(primes).to contain_exactly 3, 3
  end

  it 'returns list with 2, 2, 3 for 12' do
    primes = @provider.prime_factors 12
    expect(primes).to contain_exactly 2, 2, 3
  end

  it 'returns list with 2, 2, 2, 3 for 24' do
    primes = @provider.prime_factors 24
    expect(primes).to contain_exactly 2, 2, 2, 3
  end

  it 'return list with 2147483647 for 2147483647' do
    primes = @provider.prime_factors 2_147_483_647
    expect(primes).to contain_exactly 2_147_483_647
  end

end
