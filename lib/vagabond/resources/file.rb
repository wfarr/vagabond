module Vagabond
  module Resources
    class File
      attr_accessor :name, :owner, :group, :path
      
      def initialize(name, options = {})
        @name = name
        if options[:owner]
          @owner = options[:owner]
        end
        if options[:group]
          @group = options[:group]
        end
        if options[:path]
          @path = options[:path]
        end
      end
      
      def to_s
        @path || @name
      end
    end
  end
end