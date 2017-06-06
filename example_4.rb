alf = [
  ['   ', '  |', '  |'],
  [' _ ', ' _|', '|_ '],
  [' _ ', ' _|', ' _|'],
  ['   ', '|_|', '  |'],
  [' _ ', '|_ ', ' _|'],
  [' _ ', '|_ ', '|_|'],
  [' _ ', '  |', '  |'],
  [' _ ', '|_|', '|_|'],
  [' _ ', '|_|', ' _|'],
  [' _ ', '| |', '|_|']
]

def write_as_lcd(number, alf)
  number = number.split('')
  3.times do |i|
    number.size.times do |j|
      print alf[number[j].to_i - 1][i]
    end
    puts
  end
end

write_as_lcd(ARGV[0], alf)
