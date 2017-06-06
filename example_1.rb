def array_element_count(my_array)
  my_array.each_with_object(Hash.new(0)) do |element, counter|
    counter[element] += 1
  end
end

a = [[4, 19], nil, [32, 41], 65, 4, 32]
b = [234, 0, 19, 32, 21, [54]]
puts array_element_count((a + b).compact!.flatten!)
