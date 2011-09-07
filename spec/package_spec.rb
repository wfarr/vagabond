$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'

include Vagabond

describe package("tar") do
  it { should be_installed }
  it { should be_version('1.22-2ubuntu1') }
end

describe package("nginx") do
  it { should_not be_installed }
end