require 'fizz_buzz'
require 'integer_validator'

class Menu

  def initialize(input, output, memory)
    @input = input
    @output = output
    @memory = memory
  end

  def select(mode)
    if mode == '1'
      number = @input.gets
      if IntegerValidator.new(number).valid?
        fizzbuzz = FizzBuzz.new(number.to_i)
        @output.puts( fizzbuzz.result )
        @memory.add( "#{number.to_i},#{fizzbuzz.result}" )
      else
        @output.puts('整数を入力してください')
      end
    elsif mode == '2'
      @memory.get.each do |m|
        @output.puts(m)
      end
    end
  end
end
