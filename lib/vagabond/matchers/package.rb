module Vagabond
  module Matchers
    module Package
      RSpec::Matchers.define :be_installed do
        match do |actual|
          actual.state && actual.state =~ /^installed$/
        end
        
        failure_message_for_should do |actual|
          "expected #{actual.to_s} to be installed"
        end
        
        failure_message_for_should_not do |actual|
          "expected #{actual.to_s} to not be installed"
        end
      end
    end
  end
end