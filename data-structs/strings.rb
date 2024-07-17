# frozen_string_literal: true

puts 'this is a string'.length

# cyrillic letter
puts 'б'.length

# concat
puts 'a' + 'b' + 'c' + 'd' + 'e'

# interpolation
name = 'Pesho'
puts "My name is #{name}"

# Using format
pi = 3.141592653589793
formatted_pi = format("%.2f", pi)
puts "Formatted pi: #{formatted_pi}"

# Using sprintf
formatted_pi_sprintf = sprintf("%.2f", pi)
puts "Formatted pi (sprintf): #{formatted_pi_sprintf}"

puts "Formatted pi: #{format('%.2f', pi)}"
puts "Formatted pi (sprintf): #{sprintf('%.2f', pi)}"

puts 'abv'[2] # outputs v

'абвгдежз123'.each_char do |char|
  puts char
end

'123абв'.each_byte do |int|
  puts int
end

# multiline strings
"dsad
sadsad
sadsad
sadsad".each_line do |line|
  puts "Line: #{line}"
end
