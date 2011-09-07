$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'resources'))

require 'vagabond/resources/file'
require 'vagabond/resources/package'

module Vagabond
  module Resources
    def file(name, options = {})
      Vagabond::Resources::File.new(name, options)
    end
    
    def package(name, options = {})
      Vagabond::Resources::Package.new(name, options)
    end
  end
end