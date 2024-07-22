# frozen_string_literal: true

File.open('out.txt', 'w') do |file|
  file.puts 'these are'
  file.puts 'skill'
  file.puts 'issues'
  # the file will automatically close after the end of the block
end

f = File.open('out.txt', 'r')
f.each_line do |line|
  puts line
end
f.close
