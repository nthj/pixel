class Pixel
  def calculate dimensions = nil
    [
      @high || ( @wide.to_f / ratio(dimensions) ).to_i, 
      @wide || ( @high.to_f * ratio(dimensions) ).to_i
    ]
  end
  
  def high
    @wide = nil
    freeze
  end
  
  def initialize number
    @high = @wide = number
  end
  
  def wide
    @high = nil
    freeze
  end
  
  protected
    def ratio dimensions
      dimensions.to_a.last.to_f / dimensions.to_a.first.to_f
    end
end
