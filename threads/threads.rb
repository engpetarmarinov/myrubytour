# frozen_string_literal: true

mux = Mutex.new
shared_counter = 0

threads = 10.times.map do
  Thread.new do
    100.times do
      # lock the mux
      mux.synchronize do
        shared_counter += 1
      end
    end
  end
end

threads.each(&:join)

puts "Final result of shared counter: #{shared_counter}"
