
projects_project 'continually' do
  repository  'https://github.com/markchadwick/continually.git'
end

link "/home/#{node[:user]}/.bin/continually" do
  to "#{node[:projects][:home]}/continually/continually"
end

include_recipe 'projects::work'
include_recipe 'projects::honk'
