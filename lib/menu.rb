require 'fizz_buzz'
require 'integer_validator'
require 'history_repository'

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
      HistoryRepository.new(@file_path).save(@memory.get)
    elsif mode == '4'
      HistoryRepository.new(@file_path).all.each { |s| @output.puts(s) }
    end
  end
end
