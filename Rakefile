require 'rubygems'
require 'bundler'
require 'rake/testtask'
include Rake::DSL
Bundler::GemHelper.install_tasks

Rake::TestTask.new(:test) do |t|
  t.libs << "."
  t.test_files = FileList['test/*_test.rb']
end

task :default => :test
