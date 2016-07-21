class HistoryRepository
  def initialize(file_path)
    @file_path = file_path
    @histories = []
  end

  def add(histories)
    @histories << histories
  end

  def current_history
    @histories.dup
  end

  def save
    File.open(@file_path, "w") do |file|
      @histories.each do |h|
        file.puts(h.number)
      end
    end
  end

  def all
    return [] unless File.exist?(@file_path)
    histories = []
    File.open(@file_path) do |f|
      f.each do |s|
        histories << FizzBuzz.new(s.to_i)
      end
    end
    histories
  end
end

