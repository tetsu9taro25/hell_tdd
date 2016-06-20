require 'menu'

while true do
  puts 'メニューを選んでください。'
  number = gets.chomp

  break if number == '0'

  Menu.new(STDIN, STDOUT).select(number)

end
