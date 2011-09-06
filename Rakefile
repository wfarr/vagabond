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
