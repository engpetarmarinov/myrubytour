# frozen_string_literal: true

current_time = Time.now
future_time = current_time + 5 # adds 5 seconds

puts "Current time: #{current_time}"
puts "Future time: #{future_time}"

threads = 1.times.map do
  Thread.new do
    sleep 5
    puts "[#{Time.now}]Thread is completed"
  end
end

puts "[#{Time.now}]This is main thread"
threads.each(&:join)
