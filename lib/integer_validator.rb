class IntegerValidator
  def initialize(number)
    @number = number
  end

  # 0.2などの小数、日本語、英字、記号、特殊文字
  def valid?
    @number.match(/^[0-9]+$/)
  end

end
