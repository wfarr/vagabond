$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'

include Vagabond

describe package("tar") do
  it { should_not be_installed }
end

describe package("nginx") do
  it { should_not be_installed }
end