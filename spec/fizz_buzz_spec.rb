require 'fizz_buzz'

describe FizzBuzz do
  it do
    obj = FizzBuzz.new(3)
    result = obj.result
    expect(result).to eq('Fizz')
  end
end
