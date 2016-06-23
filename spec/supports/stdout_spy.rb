class StdoutSpy

  def initialize
    @str = []
  end

  def puts(str)
    @str << str
  end

  def result
    @str
  end
end
