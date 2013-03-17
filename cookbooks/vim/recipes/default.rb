package 'vim-nox'

directory "/home/#{node[:user]}/.vim" do
  mode    '0775'
  user    node[:user]
  group   node[:user]
end

remote_directory "/home/#{node[:user]}/.vim/colors" do
  source  'colors'
  mode    '0775'
  user    node[:user]
  group   node[:user]
end

require_recipe 'vim::plugins'
