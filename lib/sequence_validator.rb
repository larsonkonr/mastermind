class SequenceValidator

  attr_accessor :guess, :sequence

  def initialize(guess = nil, sequence = nil)
    @guess = guess
    @sequence = sequence
  end

  def correct_colors

  end

  def correct_positions
   guess.each_with_index.count do |element, index_num|
     element == sequence[index_num]
   end
  end

end


h = {'r' => 0, 'b' => 0 }

# s =  [rbrb]

s.each do |l|
  h[l]
end
