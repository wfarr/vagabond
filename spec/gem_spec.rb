$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'
require 'pry'

include Vagabond

describe gem("twitter") do
  it { should_not be_installed }
end

describe gem("json") do
  it { should be_installed }
end