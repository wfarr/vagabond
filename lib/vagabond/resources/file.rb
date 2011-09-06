module Vagabond
  module Resources
    class File
      attr_accessor :name, :owner, :group
      
      def initialize(name, options = {})
        @name = name
        if options[:owner]
          @owner = options[:owner]
        end
        if options[:group]
          @group = options[:group]
        end
      end
    end
  end
end