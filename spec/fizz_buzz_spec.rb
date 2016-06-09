require 'fizz_buzz'

describe FizzBuzz do
  it { expect(described_class.new(3).result).to eq('Fizz') }

  it { expect(described_class.new(6).result).to eq('Fizz') }

  it { expect(described_class.new(5).result).to eq('Buzz') }

  it { expect(described_class.new(15).result).to eq('FizzBuzz') }

  it { expect(described_class.new(2).result).to eq('2') }
end
