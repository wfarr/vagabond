$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'matchers'))

require 'vagabond/matchers/file'

module Vagabond
  module Matchers
    include Vagabond::Matchers::File
  end
end