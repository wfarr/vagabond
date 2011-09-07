require 'rubygems'
require 'vagrant'
require 'rainbow'

namespace :vagabond do
  task :spec do
    env = Vagrant::Environment.new
    env.cli("up")
    env.cli("provision")
    env.vms.each do | name, vm |
      vm.ssh.execute do | ssh |
        stdout = []
        ssh.exec!('cd /vagrant && rspec spec/*_spec.rb') do |channel, stream, data|
          if stream == :stdout
            if data =~ /\s+should/
              if data =~ /FAILED/
                print data.foreground(:red)
              else
                print data.foreground(:green)
              end
            elsif data =~ /\d+ examples?, \d+ failure/
              if data =~ /0 failure/
                print data.foreground(:green)
              else
                print data.foreground(:red)
              end
            else
              print "".reset + data.reset
            end
          end
        end
      end
    end
  end
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end
