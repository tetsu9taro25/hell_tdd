require 'menu'
require 'memory'

menu = Menu.new(STDIN, STDOUT, Memory.new, 'product.txt')

while true do
  puts 'メニューを選んでください。'
  number = gets.chomp

  break if number == '0'

  menu.select(number)

end
