module Vagabond
  module Resources
    include Vagabond::Resources::File
    
    def file(name, options)
      Vagabond::Resources::File.new(name, options)
    end
  end
end