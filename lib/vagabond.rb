$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'vagabond'))
require 'vagabond/matchers'
require 'vagabond/resources'

module Vagabond
  include Vagabond::Matchers
  include Vagabond::Resources
  
  VERSION = "0.0.1"
end
