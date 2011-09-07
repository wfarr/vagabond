module Vagabond
  module Resources
    class Service
      attr_accessor :name

      def initialize(name)
        @name = name
      end


      def to_s
        "service(#{name})"
      end

    end
  end
end

