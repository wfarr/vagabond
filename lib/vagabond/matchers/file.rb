require 'etc'

module Vagabond
  module Matchers
    module File
      RSpec::Matchers.define :exist do
        match do |actual|
          ::File.exist? actual
        end
        
        failure_message_for_should do |actual|
          "expected file(#{actual}) would exist"
        end
        
        failure_message_for_should_not do |actual|
          "expected file(#{actual}) would not exist"
        end
      end
      
      RSpec::Matchers.define :have_owner do |expected|
        match do |actual|
          ::Etc.getpwuid(::File.stat(actual).uid).name == expected
        end
      end
    end
  end
end