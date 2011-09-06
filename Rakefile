require 'rubygems'
require 'vagrant'


namespace :vagabond do
  task :spec do
    env = Vagrant::Environment.new
    env.cli("up")
    env.cli("provision")
    env.vms.each do | name, vm |
      vm.ssh.execute do | ssh |
        puts ssh.exec!('cd /vagrant && rspec spec/*_spec.rb')
      end
    end
  end
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end
