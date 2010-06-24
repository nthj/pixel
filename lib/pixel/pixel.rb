class Pixel
  def calculate dimensions = nil
    [
      @high || ( @wide.to_f / dimensions.last.to_f * dimensions.first.to_f).to_i, 
      @wide || ( @high.to_f / dimensions.first.to_f * dimensions.last.to_f).to_i
    ]
  end
  
  def high
    @wide = nil
    self
  end
  
  def initialize number
    @high = @wide = number
  end
  
  def wide
    @high = nil
    self
  end
end
