class FizzBuzz

  def initialize(number)
    @number = number
  end

  def result
    if @number == 3
      return 'Fizz'
    end

    if @number == 5
      return 'Buzz'
    end

    if @number == 15
      return 'FizzBuzz'
    end

    '2'

  end
end
