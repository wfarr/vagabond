$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rspec'
require 'vagabond'

include Vagabond

describe file("/etc/motd") do
  it { should exist }
  it { should have_owner('root') }
  it { should have_group('root') }
  it { should have_file_type(:file) }
end

describe file("/etc") do
  it { should exist }
  it { should have_file_type(:directory) }
end

describe package("tar") do
  it { should be_installed }
end

describe package("apache2") do
  it { should_not be_installed }
end
