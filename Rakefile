require 'rubygems'
require 'vagrant'


task :test do
  env = Vagrant::Environment.new
  env.vms.each do | name, vm |
    vm.ssh.execute do | ssh |
      puts ssh.exec!('cd /vagrant_data/test && ruby test.rb')
    end
  end
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end
