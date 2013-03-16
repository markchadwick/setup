
LOCAL_DIST = "#{node[:golang][:install]}/source.tar.gz"

directory node[:golang][:install] do
  user  node[:user]
  group node[:user]
  mode  0755
end

remote_file LOCAL_DIST do
  source    node[:golang][:disturl]
  notifies  :run, 'bash[extract-dist]'
  action    :create_if_missing
end

bash 'extract-dist' do
  code    "tar -xzf #{LOCAL_DIST} -C #{node[:golang][:install]}"
  user    node[:user]
  action  :nothing
end

link node[:golang][:root] do
  to "#{node[:golang][:install]}/go"
end

include_recipe 'shell::default'
template "/home/#{node[:user]}/.bashrc.d/golang" do
  source  'bash-init'
  mode    0755
  user    node[:user]
  group   node[:user]
end
