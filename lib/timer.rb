class Timer
    def timer
    start_time = Time.now
    stop_time = Time.now
    seconds_taken = stop_time - start_time
    output_stream.puts messages.won(game, @available_colors, seconds_taken)
  end
end
