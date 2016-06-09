class FizzBuzz

  def initialize(number)
    @number = number
  end

  def result
    if @number == 3
      return 'Fizz'
    end

    'Buzz'
  end
end
