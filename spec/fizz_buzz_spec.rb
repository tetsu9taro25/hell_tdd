require 'fizz_buzz'

describe FizzBuzz do
  it do
    obj = FizzBuzz.new(3)
    result = obj.result
    expect(result).to eq('Fizz')
  end

  it do
    obj = FizzBuzz.new(5)
    result = obj.result
    expect(result).to eq('Buzz')
  end
end
