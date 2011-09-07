$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'matchers'))

require 'vagabond/matchers/file'
require 'vagabond/matchers/package'

module Vagabond
  module Matchers
    include Vagabond::Matchers::File
    include Vagabond::Matchers::Package
  end
end