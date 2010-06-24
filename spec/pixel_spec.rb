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
end
