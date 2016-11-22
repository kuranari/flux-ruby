count = 0
print 'input: '
while command = gets.chomp
  case command
  when '+'
    count += 1
  when '-'
    count -= 1
  end
  puts count
  print 'input: '
end
