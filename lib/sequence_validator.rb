require_relative './sequence'

class SequenceValidator

  attr_accessor :guess, :sequence # => nil

  def initialize(guess, sequence)
    @guess    = guess
    @sequence = sequence
  end
  #
  # def correct_colors
  #   correct = 0
  #   guess.colors.keys.each do |color|
  #     if guess.colors[color] == answer.colors[color]
  #       correct += 1
  #     end
  #   end
  #   correct
  # end
  #
  # def correct_positions
  #   guess.sequence.each_with_index.count do |element, index_num|
  #     element == answer.sequence[index_num]
  #   end
  # end

  def correct_colors
    correct = 0
    dup_sequence = sequence.dup

    guess.each do |color|
      if dup_sequence.include?(color)
        index = dup_sequence.index(color)
        dup_sequence.delete_at(index)
        correct += 1
      end
    end
    correct
  end

  def correct_positions
    guess.each_with_index.count do |element, index_num|
      element == sequence[index_num]
    end
  end


end

#
# h = {'r' => 0, 'b' => 0 }
#
# s =  [rbrb]
#
# s.each do |l|
#   h[l]
# end
