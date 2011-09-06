$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'
require 'pry'

include Vagabond

describe file("/etc/motd") do
  it { should_not exist }
end

describe file("#{ENV['HOME']}/.gitconfig") do
  it { should have_owner(ENV['USER']) }
  it { should have_group('staff') }
  it { should have_file_type(:file) }
end

describe file(ENV['HOME']) do
  it { should have_file_type(:directory) }
end
