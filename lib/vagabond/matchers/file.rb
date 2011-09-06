require 'etc'

module Vagabond
  module Matchers
    module File
      RSpec::Matchers.define :exist do
        match do |actual|
          ::File.exist? actual.title
        end
        
        failure_message_for_should do |actual|
          "expected #{actual.to_s} would exist"
        end
        
        failure_message_for_should_not do |actual|
          "expected #{actual.to_s} would not exist"
        end
      end
      
      RSpec::Matchers.define :have_owner do |expected|
        match do |actual|
          ::Etc.getpwuid(::File.stat(actual.title).uid).name == expected
        end
      end
    end
  end
end