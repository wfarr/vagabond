module Vagabond
  module Resources
    class Gem
      attr_accessor :name

      def initialize(name, options = {})
        @name = name
      end

      def title
        @name
      end

      def to_s
        "gem(#{title})"
      end

      def state
        `gem list -i #{@name}`
        if $? == 0
          "installed"
        else
          "not installed"
        end
      end
    end
  end
end      