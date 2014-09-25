class SequenceGenerator
  attr_accessor :sequence, :new_code  # => nil


  def self.sequence
    sequence =  ["r","b","g","y"]            # => ["r", "b", "g", "y"]
    @code = []                           # => []
    4.times{ @code << sequence.sample }  # => 4
    @code                                # => ["r", "r", "y", "r"]
  end

  # def permutation
  #   possible = sequence.dup
  #   possible.permutation.to_a
  #   unless possible.contain?(guess) == false
  #     invalid_guess
  # end
end

  # => ["r", "r", "y", "r"]
