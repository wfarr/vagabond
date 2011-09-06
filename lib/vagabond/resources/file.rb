module Vagabond
  module Resources
    class File
      def initialize(name, options)
        @name = name
        options.each do |key, value|
          self.instance_variable_set("@#{key}".to_sym, value)
        end
      end
    end
  end
end