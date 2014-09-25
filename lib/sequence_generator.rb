class SequenceGenerator
  attr_accessor :sequence, :new_code


  def self.sequence
    sequence =  ["r","b","g","y"]
    @code = []
    4.times{ @code << sequence.sample }
    @code
  end

end
