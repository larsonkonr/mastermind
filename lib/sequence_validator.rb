require_relative './sequence'

class SequenceValidator

  attr_accessor :guess, :sequence

  def initialize(guess, sequence)
    @guess    = guess
    @sequence = sequence
  end

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
