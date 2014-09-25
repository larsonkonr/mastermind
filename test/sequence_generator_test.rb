require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/sequence_generator'

class SequenceGeneratorTest < Minitest::Test
  def test_correct_sequence_generated_right_letters
    sequence = SequenceGenerator.sequence
    count = sequence.join.scan(/[^rgby]/).count
    assert_equal count, 0
  end
end
