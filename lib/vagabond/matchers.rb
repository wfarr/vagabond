$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'matchers'))

require 'vagabond/matchers/file'
require 'vagabond/matchers/gem'
require 'vagabond/matchers/package'
require 'vagabond/matchers/service'

module Vagabond
  module Matchers
    include Vagabond::Matchers::File
    include Vagabond::Matchers::Gem
    include Vagabond::Matchers::Package
    include Vagabond::Matchers::Service
  end
end
