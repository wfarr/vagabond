$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'
require 'pry'

include Vagabond

describe service('stupid') do
  it { should_not be_running }
end

describe service('apache2') do
  it { should be_running }
end


