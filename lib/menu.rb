require 'fizz_buzz'

class Menu

  def initialize(input, output)
    @input = input
    @output = output
  end

  def select(mode)
    if mode == '1'
      number = @input.gets
      obj = FizzBuzz.new(number.to_i)
      @output.print(obj.result)
    end
  end
end
