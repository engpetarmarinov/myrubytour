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

# Add 5 minutes
future_time_minutes = current_time + (5 * 60)
puts "Future Time (after 5 minutes): #{future_time_minutes}"

# Add 3 hours
future_time_hours = current_time + (3 * 60 * 60)
puts "Future Time (after 3 hours): #{future_time_hours}"

# Add 2 days
future_time_days = current_time + (2 * 24 * 60 * 60)
puts "Future Time (after 2 days): #{future_time_days}"

formatted_time = current_time.strftime('%Y-%m-%d %H:%M:%S')
puts "Formatted Time: #{formatted_time}"

unix_timestamp = current_time.to_i
puts "Current Unix Timestamp: #{unix_timestamp}"

# wait for all threads to finish
threads.each(&:join)
