class Memory

  def initialize
    @str = []
  end

  def add(str)
    @str << str
  end

  def get
    @str.dup
  end
end
