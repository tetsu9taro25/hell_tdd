class StdinStub

  def initialize(input)
    @input = input
  end

  def gets
    @input
  end
end
