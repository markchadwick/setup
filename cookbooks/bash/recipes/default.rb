
directory "/home/#{node[:user]}/.bashrc.d" do
  owner   node[:user]
  group   node[:user]
  mode    0755
end
