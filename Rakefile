require 'rubygems'
require 'vagrant'


namespace :vagabond do
  desc "Run specs on vagabond"
  task :spec do
    env = Vagrant::Environment.new
    puts "vagrant up"
    env.cli("up")
    puts "vagrant provision"
    env.cli("provision")
    env.vms.each do | name, vm |
      vm.ssh.execute do | ssh |
        puts "rspec"
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
