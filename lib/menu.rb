require 'fizz_buzz'
require 'integer_validator'

class Menu

  def initialize(input, output)
    @input = input
    @output = output
  end

  def select(mode)
    if mode == '1'
      @output.puts('FizzBuzzをスタートします')
      number = @input.gets
      if IntegerValidator.new(number).valid?
        @output.puts( FizzBuzz.new(number.to_i).result )
      else
        @output.puts('整数を入力してください')
      end
    elsif mode == '2'
      @output.puts('3,Fizz')
    end
  end
end
