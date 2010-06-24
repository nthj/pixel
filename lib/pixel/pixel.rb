class Pixel
  def calculate dimensions = nil
    [@number, @wide || ( @number.to_f / dimensions.first.to_f * dimensions.last.to_f).to_i ]
  end
  
  def high
    @wide = nil
    self
  end
  
  def initialize number
    @number = @wide = number
  end
end
