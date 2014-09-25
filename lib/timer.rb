class Timer
  attr_reader :start, :total_time         # => nil

  def initialize(time_limit=nil, &block)
    @start_time = nil
    @end_time = nil
    @total_time = 0
    @runnning = nil
  end

  def self.time
    yield( timer = Timer.new.start )
    return timer.total_time
  end

  def defuse
    if @timer_thread
      #Thread.kill @timer_thread
      @timer_thread.kill
      @timer_thread = nil
    end
  end

  def stopped?
    return !@running
  end

  def start
    @running = true
    @start_time = Time.now

    limit if @time_limit

  end

  def stop
    if @running
      defuse
      @end_time = Time.now
      @running = false
      @total_time += (@end_time - @start_time)
    else
      nil
    end
  end

  def total_time
    if running? then
      return @total_time + (Time.now - @start_time)
    else
      return @total_time
    end
  end
  @start                                             # => nil
  @stop                                              # => nil
  puts "total time #{@total_time}"                   # => nil
end


# >> total time
