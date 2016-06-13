require 'menu'

class StdoutSpy
  def print(str)
    @str = str
  end

  def result
    @str
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

  # spyを本番で使うSTDOUTにしてテストした例
  #it do
  #  spy = STDOUT
  #  stub = StdinStub.new('3')
  #  obj = Menu.new(stub, spy)
  #  obj.select('1')
  #end
end
