class Integer
  def pixels
    Pixel.new self
  end
  alias pixel pixels
end
