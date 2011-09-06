module Vagabond
  module Matchers
    module File
      RSpec::Matchers.define :exist do
        match do |actual|
          ::File.exist? actual.name
        end
      end
    end
  end
end