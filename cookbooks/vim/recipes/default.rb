package 'vim-nox'

cookbook_file "/home/#{node[:user]}/.vimrc" do
  source  'vimrc'
  mode    '0664'
  user    node[:user]
  group   node[:user]
end

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
