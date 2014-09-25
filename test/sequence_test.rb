require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/sequence'

class SequenceTest < Minitest::Test
  def test_it_can_store_a_sequence
    sequence = Sequence.new(["b", "y", "y", "y"])
    assert_equal sequence.sequence, ["b", "y", "y", "y"]
  end
end
