# -*- encoding: utf-8 -*-
begin
  require 'jeweler'
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
  exit 1
end

Jeweler::Tasks.new do |s|
  s.name     = "pixel"
  s.summary  = "Ruby extension for calculating the new dimensions of a resized image"
  s.email    = "nathaniel@pointeractive.com"
  s.homepage = "http://github.com/nthj/pixel"
  s.description = "Quickly calculate the new dimensions of a resized image by giving it the original dimensions, and how many pixels wide or tall you need your new image to be"
  s.authors  = ["Nathaniel Jones"]
  
  s.has_rdoc = false  
  s.test_files = Dir['spec/*_spec.rb']

  s.add_development_dependency "rspec"
end

require 'spec/rake/spectask'

desc 'Run the specs'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'lib'
  t.pattern = 'spec/*_spec.rb'
  t.verbose = true
end
task :spec => :check_dependencies

task :default => :specs
