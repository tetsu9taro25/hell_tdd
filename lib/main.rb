require 'menu'
require 'history_repository'

menu = Menu.new(STDIN, STDOUT, HistoryRepository.new('product.txt'))

while true do
  puts 'メニューを選んでください。'
  number = gets.chomp

  break if number == '0'

  menu.select(number)

end
