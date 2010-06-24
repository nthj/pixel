require 'rubygems' 
require 'pixel'
gem 'rspec'

describe Pixel do
  it "should have a calculate method" do
    Pixel.new(1).should respond_to(:calculate)
  end
  
  it "should return the specified pixels as a dimensions array" do
    Pixel.new(50).calculate.should eql [50, 50]
  end
  
  it "should calculate the new width if we fix height" do
    { [100, 200] => [50, 100], [82, 620] => [50, 378], [729, 65] => [50, 4] }.each do |original, calculated|
      Pixel.new(50).high.calculate(original).should eql calculated
    end
  end
end
