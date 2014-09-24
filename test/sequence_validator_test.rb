require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/sequence_validator'

class SequenceValidatorTest < Minitest::Test
  def test_it_can_determine_correct_number_of_positions
    sequence_validator = SequenceValidator.new(["b", "y", "y", "y"], ["b", "g", "g", "g"])
    assert_equal 1, sequence_validator.correct_positions
  end

  def test_it_can_determine_correct_number_of_colors
    skip
    sequence_validator = SequenceValidator.new(["b", "y", "y", "r"],["b", "g", "g", "y"])
    assert_equal 2, sequence_validator.correct_colors
  end

end
