@new_array = []

def show_me_banner(array)
  array -= @new_array
  show_num = array[rand(0..array.size - 1)]
  @new_array.push(show_num)
  show_num
end

my_array = [3, 123, 2, 6, 4, 234, 32]
my_array.size.times do
  puts show_me_banner(my_array)
end
