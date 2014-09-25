class Sequence

  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def colors
    counts = { 'r' => 0, 'b' => 0, 'y' => 0, 'g' => 0 }
    @sequence.each do |color|
      counts[color] += 1
    end
    counts
  end
end
