file '/etc/motd' do
  content 'foobar'
  action [:delete, :create]
end

gem_package 'bundler' do
  action :install
end

gem_package 'rspec' do
  action :install
end

execute "bundle install" do
  cwd "/vagrant"
  action :run
end