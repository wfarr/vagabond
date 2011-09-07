module Vagabond
  module Resources
    class Package
      attr_accessor :name

      def initialize(name, options = {})
        @name = name
      end

      def title
        @name
      end

      def to_s
        "package(#{title})"
      end
      
      def state
        aptitude.match(/^State: (.*)$/)[1] rescue nil
      end

      def version
        aptitude.match(/^Version: (.*)$/)[1] rescue nil
      end

      private
      def aptitude
        results = `sudo aptitude show #{@name}`
        if $? == 0
          results
        else
          ""
        end
      end
    end
  end
end