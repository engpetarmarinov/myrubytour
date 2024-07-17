# frozen_string_literal: true

fruits = { 'apple' => 'red', 'banana' => 'yellow', 'cherry' => 'red' }

puts fruits['apple']

fruits.each do |key, value|
  puts "Fruit: #{key}, Color: #{value}"
end

fruits['mango'] = 'yellow'
fruits.delete('banana')  # Removes the "banana" key-value pair
