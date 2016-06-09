require 'fizz_buzz'

describe FizzBuzz do
  it { expect(described_class.new(3).result).to eq('Fizz') }

  it { expect(described_class.new(5).result).to eq('Buzz') }
end
