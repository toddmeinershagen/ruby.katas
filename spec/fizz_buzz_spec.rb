require File.join(File.dirname(__FILE__), '..', 'fizz_buzz')

describe 'fizzbuzz' do

  [3, 6, 27].each do | number |
    it 'returns fizz if multiple of 3' do
      expect(FizzBuzz.of(number)).to eq 'Fizz'
    end
  end

  [5, 10, 200].each do | number |
    it 'returns buzz if multiple of 5' do
      expect(FizzBuzz.of(number)).to eq 'Buzz'
    end
  end

  [4, 32, 106].each do | number |
    it 'returns number if not a multiple' do
      expect(FizzBuzz.of(number)).to eq number.to_s
    end
  end

  [15, 30, 90].each do | number |
    it 'returns FizzBuzz if multiple of both 3 and 5' do
      expect(FizzBuzz.of(number)).to eq 'FizzBuzz'
    end
  end
end
