require 'menu'

class StdoutSpy
  def print(str)
  end

  def result
    'Fizz'
  end

end

class StdinStub
  def initialize(input)
    @input = input
  end

  def gets
    @input
  end
end

describe Menu do
  it do
    spy = StdoutSpy.new
    stub = StdinStub.new('3')
    obj = Menu.new(stub, spy)
    obj.select('1')
    expect(spy.result).to eq('Fizz')
  end
end
