class StdoutSpy

  def puts(str)
    @str = str
  end

  def result
    @str
  end
end
