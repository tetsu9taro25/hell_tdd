class HistoryRepository
  def initialize(file_path)
    @file_path = file_path
  end

  def save(histories)
    File.open(@file_path, "w") do |file|
      histories.each do |h|
        file.puts(h)
      end
    end
  end

  def all
    return [] unless File.exist?(@file_path)
    histories = []
    File.open(@file_path) do |f|
      f.each do |s|
        histories << s.chomp
      end
    end
    histories
  end
end
