module Vagabond
  module Matchers
    module Service
      RSpec::Matchers.define :be_running do
        match do |actual|
          @status = `service #{actual.name} status 2>&1`.chomp
          $? == 0
        end

        failure_message_for_should do |actual|
          "expected #{actual.name} to be running, but wasn't: #{@status}"
        end
      end
    end
  end
end


