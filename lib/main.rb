print 'メニューを選んでください。'

while true do
  number = gets.chomp

  break if number == '0'

  if number == '1'
    print 'FizzBuzz実行'
  elsif number == '2'
    print '履歴表示'
  end

end
