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
  
  it "should attempt to turn the original dimensions into an array" do
    dimensions = mock('Array', :first => 50, :last => 50, :to_a => mock('Array', :first => 50, :last => 50))
    dimensions.should_receive(:to_a).at_least :once
    Pixel.new(50).high.calculate dimensions
  end
  
  context "height" do
    it "should calculate the new width" do
      { [100, 200] => [50, 100], [82, 620] => [50, 378], [729, 65] => [50, 4] }.each do |original, calculated|
        Pixel.new(50).high.calculate(original).should eql calculated
      end
    end
    
    it "should freeze the object" do
      lambda { Pixel.new(50).high.high }.should raise_error(TypeError)
    end
  end
  
  context "width" do
    it "should calculate the new height" do
      { [100, 200] => [25, 50], [82, 100] => [41, 50], [729, 65] => [560, 50] }.each do |original, calculated|
        Pixel.new(50).wide.calculate(original).should eql calculated
      end
    end
    
    it "should freeze the object" do
      lambda { Pixel.new(50).wide.wide }.should raise_error(TypeError)
    end
  end
end
