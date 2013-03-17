
projects_project 'continually' do
  repository  'https://github.com/markchadwick/continually.git'
end

link "/home/#{node[:user]}/.bin/continually" do
  to "#{node[:projects][:home]}/continually/continually"
end

include_recipe 'projects::work'
include_recipe 'projects::honk'

# -----------------------------------------------------------------------------
# Self-install
# -----------------------------------------------------------------------------

projects_project 'setup' do
  repository  'https://github.com/markchadwick/setup.git'
  force       true
end

cron 'create-setup-cron-task' do
  hour    "4"
  minute  "0"
  mailto  "mark.chadwick+setup-#{`hostname`.strip()}@gmail.com"
  command "cd #{node[:projects][:home]}/setup && make > /dev/null"
  user    node[:user]
end
