require 'fizz_buzz'
require 'integer_validator'

class Menu

  def initialize(input, output, history_repository)
    @input = input
    @output = output
    @history_repository = history_repository
  end

  def select(mode)
    if mode == '1'
      number = @input.gets
      if IntegerValidator.new(number).valid?
        fizzbuzz = FizzBuzz.new(number.to_i)
        @output.puts(fizzbuzz.result)
        @history_repository.add(fizzbuzz)
      else
        @output.puts('整数を入力してください')
      end
    elsif mode == '2'
      @history_repository.current_history.each do |m|
        @output.puts(m.to_s)
      end
    elsif mode == '3'
      @history_repository.save
    elsif mode == '4'
      @history_repository.all.each { |s| @output.puts(s.to_s) }
    end
  end
end
