class FizzBuzz

  def initialize(number)
    @number = number
  end

  def result
    if @number == 0
      return 0.to_s
    end

    if @number % 15 == 0
      return 'FizzBuzz'
    end

    if @number % 5 == 0
      return 'Buzz'
    end

    if @number % 3 == 0
      return 'Fizz'
    end

    @number.to_s

  end

  def to_s
    "#{@number},#{result}"
  end
end
