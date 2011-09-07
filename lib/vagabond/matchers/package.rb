module Vagabond
  module Matchers
    module Package
      RSpec::Matchers.define :be_installed do
        match do |actual|
          actual.state && actual.state =~ /^installed$/
        end
      end
    end
  end
end