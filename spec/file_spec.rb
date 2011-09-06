$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'

include Vagabond

describe file("/etc/motd") do
  it { should_not exist }
end

describe file("#{ENV['HOME']}/.gitconfig") do
  it { should have_owner(ENV['USER']) }
end
