$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'resources'))

require 'vagabond/resources/file'

module Vagabond
  module Resources
    def file(name, options = {})
      Vagabond::Resources::File.new(name, options)
    end
  end
end