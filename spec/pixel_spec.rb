require 'rubygems' 
require 'pixel'
gem 'rspec'

describe Pixel do
  it "should have a calculate method" do
    Pixel.new.should respond_to(:calculate)
  end
end
