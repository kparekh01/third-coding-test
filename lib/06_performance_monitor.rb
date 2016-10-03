def measure(time_elapsed = 0)
  start_time = Time.now
  time_elapsed == 0 ? yield : time_elapsed.times {|finish_time| yield(finish_time)}
  (Time.now - start_time) / (time_elapsed == 0 ? 1 : time_elapsed)
end

