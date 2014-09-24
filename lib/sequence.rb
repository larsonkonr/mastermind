class Sequence

  attr_reader :sequence  # => nil

  def initialize(sequence)
    @sequence = sequence    # => ["r", "b", "g", "y"]
  end

  def colors
    counts = { 'r' => 0, 'b' => 0, 'y' => 0, 'g' => 0 }  # => {"r"=>0, "b"=>0, "y"=>0, "g"=>0}
    @sequence.each do |color|                            # => ["r", "b", "g", "y"]
      counts[color] += 1                                 # => 1, 1, 1, 1
    end                                                  # => ["r", "b", "g", "y"]
    counts                                               # => {"r"=>1, "b"=>1, "y"=>1, "g"=>1}
  end
end

s = Sequence.new(["r", "b", "g", "y"])  # => #<Sequence:0x007fe4ba16f3e0 @sequence=["r", "b", "g", "y"]>

s.colors  # => {"r"=>1, "b"=>1, "y"=>1, "g"=>1}
