# frozen_string_literal: true

puts 'Hey arrays!'
a = [1, '2', Math.sqrt(9)]
puts a

# append
a << 4
puts a # array is now [1, 2, 3.0, 4]

# using push method
a.push(5, 6) # array is now [1, 2, 3.0, 4, 5, 6]

# shift
el = a.shift # removes 1 from the array
puts el

# pop
el = a.pop # removes the last element
puts el

# delete
a.delete(4)
puts a

# delete_at
a.delete_at(0)
puts a

a.pop until a.empty?
puts a.empty?


b = [1,2,3,4,5]
b.each do |i|
  puts i
end

b.each_with_index do |element, index|
  puts "Index #{index}: #{element}"
end
