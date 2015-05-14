require 'rspec/core/rake_task'
require File.join(File.dirname(__FILE__), '.', 'elend_rate_checker')

RSpec::Core::RakeTask.new(:spec)

task :default => [:run] do
end

task :run do
  puts "You have run successfully."
end

task :test => [:spec] do
end

task :rates do
  checker = ElendRateChecker.new()
  puts checker.check_rates()
end
