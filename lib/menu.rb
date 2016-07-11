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
      File.open("test.txt", "w") do |file|
        @memory.get.each do |m|
          file.puts(m)
        end
      end
    elsif mode == '4'
      File.open("test.txt") do |f|
        f.each do |s|
          @output.puts(s.chomp)
        end
      end
    end
  end
end
