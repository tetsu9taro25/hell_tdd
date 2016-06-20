require 'menu'

class StdoutSpy
  def puts(str)
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

  it do
    spy = StdoutSpy.new
    stub = StdinStub.new('0.2')
    obj = Menu.new(stub, spy)
    obj.select('1')
    expect(spy.result).to eq('整数を入力してください')
  end

  it do
    spy = StdoutSpy.new
    obj = Menu.new(nil, spy)
    obj.select('100')
    expect(spy.result).to be_nil
  end

  # spyを本番で使うSTDOUTにしてテストした例
  #it do
  #  spy = STDOUT
  #  stub = StdinStub.new('3')
  #  obj = Menu.new(stub, spy)
  #  obj.select('1')
  #end
end
