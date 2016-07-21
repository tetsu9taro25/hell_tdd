require 'fizz_buzz'
require 'integer_validator'

class Menu

  def initialize(input, output, memory, history_repository)
    @input = input
    @output = output
    @memory = memory
    @history_repository = history_repository
  end

  def select(mode)
    if mode == '1'
      number = @input.gets
      if IntegerValidator.new(number).valid?
        fizzbuzz = FizzBuzz.new(number.to_i)
        @output.puts(fizzbuzz.result)
        @memory.add(fizzbuzz.to_s)
      else
        @output.puts('整数を入力してください')
      end
    elsif mode == '2'
      @memory.get.each do |m|
        @output.puts(m)
      end
    elsif mode == '3'
      @history_repository.save(@memory.get)
    elsif mode == '4'
      @history_repository.all.each { |s| @output.puts(s) }
    end
  end
end
