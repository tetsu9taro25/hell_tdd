require 'menu'

puts 'メニューを選んでください。'

while true do
  number = gets.chomp

  break if number == '0'

  Menu.new(STDIN, STDOUT).select(number)

end
