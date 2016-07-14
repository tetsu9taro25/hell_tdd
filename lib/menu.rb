require 'fizz_buzz'
require 'integer_validator'

class Menu

  def initialize(input, output, memory, file_path)
    @input = input
    @output = output
    @memory = memory
    @file_path = file_path
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
      File.open(@file_path, "w") do |file|
        @memory.get.each do |m|
          file.puts(m)
        end
      end
    elsif mode == '4'
      return unless File.exist?(@file_path)
      File.open(@file_path) do |f|
        f.each do |s|
          @output.puts(s.chomp)
        end
      end
    end
  end
end
