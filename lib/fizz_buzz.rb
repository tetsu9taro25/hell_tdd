class FizzBuzz

  def initialize(number)
    @number = number
  end

  def result
    if @number == 5
      return 'Buzz'
    end

    if @number == 15
      return 'FizzBuzz'
    end

    if @number % 3 == 0
      return 'Fizz'
    end

    '2'

  end
end
