require 'fizz_buzz'
require 'integer_validator'

class Menu

  def initialize(input, output)
    @input = input
    @output = output
  end

  def select(mode)
    if mode == '1'
      number = @input.gets
      if IntegerValidator.new(number).valid?
        obj = FizzBuzz.new(number.to_i)
        @output.print(obj.result)
      else
        @output.print('整数を入力してください')
      end
    end
  end
end
